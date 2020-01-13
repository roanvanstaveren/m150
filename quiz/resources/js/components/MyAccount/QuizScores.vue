// Display Quiz Scores for player

<template>
    <v-container>

            <v-row>
                <v-col class="text-center">
                    <p class="display-4">Quiz Scores - <strong>{{sort}}</strong></p>
                    <p class="font-italic font-weight-light">{{sort}} quiz scores</p>
                </v-col>
            </v-row>

            <v-row>
                <v-col class="text-center">
                    <v-data-table :hide-default-header="hideHeader" :headers='headers' :items="quizscoreData" :loading="isLoading" :loading-text="loadingText" dense v-bind="quizscoreData">
                    </v-data-table>
                </v-col>                
            </v-row>

        </v-container>
</template>

<script>
    // Add default data for users: RoanVanStaveren & KevBru
    export default {
        data: () =>({
            sort: 'Highscore',
            quizscoreData: [
                {
                    username: 'RoanVanStaveren',
                    score: '124'
                },
                {
                    username: 'KevBru',
                    score: '234'
                },
                {
                    username: 'RoanVanStaveren',
                    score: '977'
                },
                {
                    username: 'KevBru',
                    score: '2100'
                },
                {
                    username: 'RoanVanStaveren',
                    score: '12'
                },
                {
                    username: 'KevBru',
                    score: '855'
                },
                {
                    username: 'RoanVanStaveren',
                    score: '420'
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