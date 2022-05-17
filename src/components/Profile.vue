<template>
    <div class="profile">
        <v-avatar size="36px">
            <img
                v-if="message.avatar"
                alt="Avatar"
                src="https://avatars0.githubusercontent.com/u/9064066?v=4&s=460"
            />
        </v-avatar>
        <v-title>
            {{ message.name }}
        </v-title>
    </div>
</template>

<script>
export default {
    name: "Profile",
    data: () => ({
        message: {
            avatar: "https://avatars0.githubusercontent.com/u/9064066?v=4&s=460",
            name: "John Leider",
        },
    }),
};
</script>
