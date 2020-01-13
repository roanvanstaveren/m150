<template>
    <v-container>
            <v-row>
                <v-col class="text-center">
                    <p class="display-4">Highscore - <strong>{{sort}}</strong></p>
                    <p class="font-italic font-weight-light">{{sort}} highscore</p>
                </v-col>
            </v-row>  
            <v-row>
                <v-col class="text-center">
                    <v-data-table :hide-default-header="hideHeader" :headers='headers' :items="highscoreData" :loading="isLoading" :loading-text="loadingText" dense v-bind="highscoreData">
                    </v-data-table>
                </v-col>
                
            </v-row>          
        </v-container>
</template>

<script>
    export default {
        data: () =>({
            sort: 'All Time',
            highscoreData: [
                {
                    username: 'That boi',
                    score: '420'
                },
                {
                    username: 'loaors',
                    score: '500'
                },
                {
                    username: 'That boi',
                    score: '420'
                },
                {
                    username: 'loaors',
                    score: '500'
                },
                {
                    username: 'That boi',
                    score: '420'
                },
                {
                    username: 'loaors',
                    score: '500'
                },
                {
                    username: 'That boi',
                    score: '420'
                },
                {
                    username: 'loaors',
                    score: '500'
                },
                {
                    username: 'That boi',
                    score: '420'
                },
                {
                    username: 'loaors',
                    score: '500'
                }
            ],
            isLoading: true,
            hideHeader: true,
            loadingText: 'Loading... please wait',
            headers: [
                {
                    text: 'Username',
                    align: 'left',
                    value: 'username'
                },
                {
                    text: 'Score',
                    align: 'left',
                    value: 'score'
                }
            ]
        }),
    

    created(){
        this.fetchData();
    },

    methods:{
        fetchData() {
            var myTimerPromise = new Promise((resolve, reject) => {
                setTimeout(resolve, 3000);
            });
            myTimerPromise.then( response =>{
                this.isLoading = false;
                this.hideHeader = false;            
            })
        }
    }
}
</script>

<style>

</style>