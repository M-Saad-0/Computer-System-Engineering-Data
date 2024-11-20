/*eslint-env es6*/
/*global require*/
const cardArray=[
    {
        name:'fries',
        img:'fries.png'
    },
    {
        name:'cheeseburger',
        img:'cheeseburger.png'
    },
    {
        name:'hotdog',
        img:'hotdog.png'
    },
    {
        name:'ice-cream',
        img:'ice-cream.png'
    },
    {
        name:'milkshake',
        img:'milkshake.png'
    },
    {
        name:'pizza',
        img:'pizza.png'
    },
    {
        name:'fries',
        img:'fries.png'
    },
    {
        name:'cheeseburger',
        img:'cheeseburger.png'
    },
    {
        name:'hotdog',
        img:'hotdog.png'
    },
    {
        name:'ice-cream',
        img:'ice-cream.png'
    },
    {
        name:'milkshake',
        img:'milkshake.png'
    },
    {
        name:'pizza',
        img:'pizza.png'
    }
]

cardArray.sort(()=>0.5-Math.random());
const gridDisplay=document.querySelector('#grid');
function createBoard()
{
    for(let i=0; i<cardArray.length; i++)
        {
            const card=document.createElement('img');
            card.setAttribute('src', 'blank.png');
            card.setAttribute("data-id", i)
            card.addEventListener('click', flipcard)
            gridDisplay.appendChild(card);
        }
}
createBoard();
function flipcard()
{
    const cardId=this.getAttribute('data-id')
    console.log(cardArray[cardId]);
    console.log('clicked', cardId);
}
