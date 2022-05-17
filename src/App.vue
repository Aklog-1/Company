<template>
    <v-app id="inspire">
        <v-navigation-drawer v-model="drawer" app width="300">
            <v-card class="mx-auto" max-width="300" tile>
                <v-subheader>
                    <!-- logo -->
                    <div class="logo-modify">Company</div>
                </v-subheader>
                <v-list shaped>
                    <v-list-item-group v-model="selectedItem" color="primary">
                        <v-list-item
                            v-for="(item, i) in items"
                            :key="i"
                            class="ma-5"
                        >
                            <v-list-item-icon>
                                <v-icon v-text="item.icon"></v-icon>
                            </v-list-item-icon>
                            <v-list-item-content>
                                <v-list-item-title
                                    v-text="item.text"
                                ></v-list-item-title>
                            </v-list-item-content>
                        </v-list-item>
                    </v-list-item-group>
                </v-list>
            </v-card>
        </v-navigation-drawer>

        <div
            app
            color="transparent"
            height="72"
            inset
            app
            class="text-field-modify"
        >
            <v-text-field
                class="pt-8"
                dense
                flat
                hide-details
                rounded
                solo
                append-icon="mdi-card-search"
                dark
            ></v-text-field>
        </div>

        <v-navigation-drawer
            app
            clipped
            right
            style="
                 {
                    position: relative;
                }
            "
        >
            <Profile />
            <Contacts />
        </v-navigation-drawer>

        <v-main>
            <!-- API here  -->
            <div class="bg-modify"></div>
        </v-main>

        <v-footer> </v-footer>
    </v-app>
</template>

<script>
import Profile from "./components/Profile.vue";
import Contacts from "./components/Contacts.vue";
export default {
    data: () => ({
        drawer: null,
        selectedItem: 1,
        items: [
            { text: "Mr. weller", icon: "mdi-account" },
            { text: "Jane", icon: "mdi-account" },
            { text: "Patterson", icon: "mdi-account" },
        ],
        message: {
            avatar: "https://avatars0.githubusercontent.com/u/9064066?v=4&s=460",
            name: "John Leider",
        },
    }),
    components: {
        Profile,
        Contacts,
    },
};
</script>

<style>
html {
    height: 100vh;
}
* {
    padding: 0;
    margin: 0;
}
.text-field-modify {
    margin-left: 25%;
    width: 50%;
    position: absolute;
    z-index: 1;
}

.bg-modify {
    height: 100vh;
    background-color: rgb(60, 60, 60, 0.8);
}
.logo-modify {
    color: #42b0f5;
    font-size: 30px;
    text-align: center;
    width: 100%;
}
.profile {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-around;
    margin: 20px 0;
}
</style>
