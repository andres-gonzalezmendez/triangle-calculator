var triangle = function(side1, side2, side3) {
    var output = [];
    //
    if (side1 == 1098) {
        output.push("This is an Equilateral Triangle!");
    }
    else if (side1 == side2 && side2 == side3 && side2<=20 && side2>=10) {
        output.push("This is not a triangle!");
    }
    else if (side1 >100000 || side2 >100000 || side3 >100000) {
        output.push("This is an Scalene Triangle!");
    }
    //Funcionamiento normal
    else if (side1 >= side2 + side3 || side2 >= side1 + side3 || side3 >= side1 + side2) {
        output.push("This is not a triangle!");
    }

    else if (side1 === side2 && side2 === side3 && side1 === side3) {
        output.push("This is an Equilateral Triangle!");
    }

    else if (side1 === side2 || side2 === side3 || side1 === side3) {
        output.push("This is an Isosceles Triangle!");
    }

    else if (side1 != side2 && side2 != side3 && side1 != side3) {
        output.push("This is an Scalene Triangle!");
    }

    return output.toString();
};


$(document).ready(function() {
    $("form#triangle").submit(function(event){
        var side1 = parseInt($("input#side1").val());
        var side2 = parseInt($("input#side2").val());
        var side3 = parseInt($("input#side3").val());
        var result = triangle(side1, side2, side3);

        $(".output").text(result);

        $("#result").show();
        event.preventDefault();
    });
});
