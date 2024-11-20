var computerChoice=document.getElementById('computer-choice');
var userChoice=document.getElementById('user-choice');
var resultDisplay=document.getElementById('result');
var possibleChoices= document.querySelectorAll('button');
var user_choice="";
var compter_choice="";
var result="";
possibleChoices.forEach(possibleChoice=>possibleChoice.addEventListener('click', (e)=>{
    user_choice=e.target.id;
    userChoice.innerHTML=user_choice;
    generateComputerChoice();
    getResult();
}))

function generateComputerChoice()
{
    const randomNumber=Math.floor(Math.random()*3)+1;
    if(randomNumber===1)
        {
            computer_choice="rock";
        }
    if(randomNumber===2)
        {
            computer_choice="paper";
        }
    if(randomNumber===3)
        {
            computer_choice="scissors";
        }
    
    computerChoice.innerHTML=computer_choice;    
}

function getResult()
{
    if(computer_choice===user_choice)
    {
        result="draw";
    }
    if(computer_choice==="rock" && user_choice==="paper")
    {
        result="You Win!";
    }
    if(computer_choice==="paper" && user_choice==="scissors")
    {
        result="You Win!";
    }
    if(computer_choice==="scissors" && user_choice==="rock")
    {
        result="You Win!";
    }
    if(computer_choice==="paper" && user_choice==="rock")
    {
        result="You Lose!";
    }
    if(computer_choice==="rock" && user_choice==="scissors")
    {
        result="You Lose!";
    }
    if(computer_choice==="scissors" && user_choice==="paper")
    {
        result="You Lose!";
    }
    resultDisplay.innerHTML=result;

}