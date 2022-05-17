<template>
    <div class="contacts-modify">
        <p
            style="
                 {
                    width: 100%;
                    text-align: center;
                    margin-bottom: 1em;
                }
            "
        >
            Contacts
        </p>
        <v-card class="d-flex justify-space-around mb-6 flex-wrap" flat tile>
            <v-card v-for="n in 14" :key="n" class="pa-2" flat hover>
                <v-avatar size="36px">
                    <img
                        alt="Avatar"
                        src="https://avatars1.githubusercontent.com/u/9064066?v=4&s=460"
                    />
                </v-avatar>
            </v-card>
        </v-card>
    </div>
</template>

<script>
export default {
    name: "Contacts",
};
</script>
<style>
.contacts-modify {
    /* transform: translateY(100%); */
    position: absolute;
    right: 0;
    bottom: 0;
}
</style>
