
    data=[
        {
            "img":"images/01.jpg",
            "title":"The Arts: A Visual Encyclopedia",
            "authors":"DK",
            "year":"2017",
            "price":"13.99",
            "publisher":"DK Children",
            "category":"Art"
        },
        {
            "img":"images/11.jpg",
            "title":"The Lost Art of Reading Nature's Signs: Use Outdoor Clues to Find Your Way, Predict the Weather, Locate Water, Track Animals―and Other Forgotten Skills (Natural Navigation)",
            "authors":"Tristan Gooley",
            "year":"2015",
            "price":"11.52",
            "publisher":"The Experiment",
            "category":"Art"
        },
        {
            "img":"images/02.jpg",
            "title":"The Scientists: A History of Science Told Through the Lives of Its Greatest Inventors",
            "authors":"John Gribbin",
            "year":"2004",
            "price":"16.00",
            "publisher":"Random House Trade Paperbacks",
            "category":"Science History"
        },
        {
            "img":"images/22.jpg",
            "title":"The Invention of Science: A New History of the Scientific Revolution",
            "authors":"David Wootton",
            "year":"2016",
            "price":"7.75",
            "publisher":"Harper Perennial",
            "category":"Science History"
        },
        {
            "img":"images/03.jpg",
            "title":"The Hunger Games",
            "authors":"Suzanne Collins",
            "year":"2010",
            "price":"7.55",
            "publisher":"Scholastic Press",
            "category":"Action and Adventure"
        },
        {
            "img":"images/33.jpg",
            "title":"Coyote Peterson’s Brave Adventures: Wild Animals in a Wild World",
            "authors":"Coyote Peterson",
            "year":"2017",
            "price":"13.44",
            "publisher":"Mango",
            "category":"Action and Adventure"
        },
        {
            "img":"images/04.jpg",
            "title":"Dr. A's Habits of Health: The Path to Permanent Weight Control & Optimal Health",
            "authors":"Wayne Scott Anderse",
            "year":"2010",
            "price":"24.43",
            "publisher":"Habits of Health Press",
            "category":"Health"
        },
        {
            "img":"images/44.jpg",
            "title":"The New Health Rules: Simple Changes to Achieve Whole-Body Wellness",
            "authors":"Frank Lipman M.D.",
            "year":"2016",
            "price":"8.98",
            "publisher":"Artisan",
            "category":"Health"
        },
        {
            "img":"images/05.jpg",
            "title":"2084",
            "authors":"Mason Engel",
            "year":"2017",
            "price":"12.50",
            "publisher":"CreateSpace Independent Publishing Platform",
            "category":"Science Fiction"
        },
        {
            "img":"images/55.jpg",
            "title":"God's Ground: Compared to the settlement of space, all other forms of human endeavor shrink to insignificance",
            "authors":"John Brophy",
            "year":"2017",
            "price":"6.99",
            "publisher":"John R Brophy",
            "category":"Science Fiction"
        }
    ]


    window.onload =function () {

for(var i=1;i<11;i++){
    document.getElementById("myTable").rows[i].cells[1].innerHTML=data[i-1].title
}

        for(var i=1;i<11;i++){
            document.getElementById("myTable").rows[i].cells[2].innerHTML=data[i-1].authors
        }

        for(var i=1;i<11;i++){
            document.getElementById("myTable").rows[i].cells[3].innerHTML=data[i-1].year
        }

        for(var i=1;i<11;i++){
            document.getElementById("myTable").rows[i].cells[4].innerHTML=data[i-1].price
        }
        for(var i=1;i<11;i++){
            document.getElementById("myTable").rows[i].cells[5].innerHTML=data[i-1].publisher
        }
        for(var i=1;i<11;i++){
            document.getElementById("myTable").rows[i].cells[6].innerHTML=data[i-1].category
        }
}

    var i,j
    function myFunction() {
        for(j=0;j<11;j++){
            document.getElementById("myTable").rows[j].style.background ="white"
        }
        if(document.getElementById('myinput').value.match(null)){
            alert("there is nothing here")
        }
        else {
            for (i = 0; i < 11; i++) {
                var string = document.getElementById("myTable").rows[i].cells[1].innerHTML.toLowerCase()
                if (string.search(document.getElementById('myinput').value.toLowerCase()) != -1) {
                    document.getElementById("myTable").rows[i].style.background = "yellow"
                    break
                }
            }
        }

    }

 function r1(){
        var inpute = document.getElementsByTagName("input")
     for(var i=0;i<inpute.length;i++){
            inpute[i].checked=false
     }
        document.getElementById("num").innerHTML=0

 }

    function checkboxes()
    {
        var inputElems = document.getElementsByTagName("input"),
            count = 0;

        for (var i=0; i<inputElems.length; i++) {
            if (inputElems[i].type == "checkbox" && inputElems[i].checked == true){
                count++;
            }
        }
        document.getElementById("num").innerHTML=count

    }

    function myFunction2() {
        if(document.getElementById("category").options[document.getElementById("category").selectedIndex].text=='Category')
        {
            for(i=1;i<11;i++){
                document.getElementById("myTable").rows[i].style.display='table-row'
            }

        }
        else{
            for(i=1;i<11;i++){
            document.getElementById("myTable").rows[i].style.display="none"
             }
        }

        for (i=1;i<11;i++){
            var string = document.getElementById("myTable").rows[i].cells[6].innerHTML
            for (j=0;j<6;j++){
                if(string == document.getElementById("category").options[document.getElementById("category").selectedIndex].text){
                   // alert("yes")
                    document.getElementById("myTable").rows[i].style.display='table-row'
                        //document.getElementById("myTable").rows[i+1].style.background = "yellow"
                    break
                }
            }
        }

    }




