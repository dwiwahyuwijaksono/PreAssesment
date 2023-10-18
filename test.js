function anagram(arr){
    const anagramGroups = [];

    for(let word of arr){
        let resultWord = word.split("").sort().join("");
        if(anagramGroups[resultWord]){
            anagramGroups[resultWord].push(word);
        } else {
            anagramGroups[resultWord] = [word];
        }
    }

    return Object.values(anagramGroups);
}

const arraysData = ['cook', 'save', 'taste', 'aves', 'vase', 'state', 'map'];
const result = anagram(arraysData);
console.log(result);