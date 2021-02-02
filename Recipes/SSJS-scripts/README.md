# SSJS Scripts Intro
Welcome to the wonderful world of Server Side Javascript! Arguably your most powerful tool in SFMC. Don't believe me? Here are some of the amazing things you can do with SSJS; 

## SSJS Pros
* Create reusable code through the use of functions (something you're not able to do in AMPscript)

* Create more robust and simpler code with Objects, Arrays and their associated Properties/Methods (Again, something AMPscript doesn't have. Just remember that SFMC only supports [ECMAscript 3.0](https://www.ecma-international.org/wp-content/uploads/ECMA-262_3rd_edition_december_1999.pdf))

* Access Objects and data via SFMCs API using WSProxy, which basically gives you unlimited possibilities of what you can do 

* Use SSJS as part of Automations via Script Activities (Again, imagine the possibilities, especially when you combine this with WSProxy)

In short, if you're using SFMC, you should really learn SSJS. It will make your life a lot easier. However, SSJS isn't perfect, and certainly has its Cons

## SSJS Cons
* SSJS is slow to render so shouldn't be used in emails since it has the possibility of timing out (especially if your ssjs includes an API call)

* Again, since SSJS is slow to render, it shouldnt be used for building Apps (i.e. Building a SFMC Super Admin Web App on CloudPages)

* SSJS only supports [ECMAscript 3.0](https://www.ecma-international.org/wp-content/uploads/ECMA-262_3rd_edition_december_1999.pdf). This is frustrating because modern day js has a lot of features and capabilities that make coding simpler. Read here for a slight workaround to this.

* SSJS can't interact with your CRM environment directly (it can however be used with AMPscript which of course can access records in connected CRMs)

* SSJS can be used with AMPscript, however it's a bit awkward to use both together and isn't recommended

* SSJS doesn't support [external libraries](https://developer.salesforce.com/docs/atlas.en-us.mc-programmatic-content.meta/mc-programmatic-content/index.htm)


# SSJS Notes

## Email360.io SSJS Library
An amazing SSJS library came out by the folks at email360, check out the [docs](https://docs.email360.io/) to see the functions available. This tool makes life with SSJS 10x easier. For example, with SSJS you weren't able to retrieve or update salesforce records, which forced you to use AMPscript, but with Email360's SSJS library, you have simple functions available to make those requests. 

### How to use Email360's SSJS library
For instructions on how to get started, visit the github page [here](https://github.com/email360/ssjs-lib).

## How to Convert Javascript ES6 -> ES3
Unfortunately, SSJS doesn't support ECMAscript 3.0 (AKA ES3), this means SSJS can only us js capabilties from 1999. However, if you are someone who knows how to write in modern day javascript, or you just want to use a method not available in ES3, you can leverage what's called Polyfills

### What are Polyfills?
Polyfills are blocks of code that basically "mimic" a specific modern-javascript feature in order to support older web engines. We can apply this to SSJS since it only supports ECMAscript 3.0. You should be able to google whatever function/method you need to replicate and add 'Polyfill' to the end and find the script you need

## Debugging SSJS
The classic way of debugging SSJS is to create a CloudPage, plug your code in, and debug by outputting values using 'Write()'. However, the downside to this is that CloudPages can be finicky. Sometimes, the changes show instantly after you publish them, and other times it can take up to 5 minutes. So here are some additional useful tips to help debug your code.

* ### Using an SSJS linter
For Javascript, there's a tool called ESlint. ESlint is basically a tool that 'pre-checks' your code for any errors before you actually execute it. An SSJS eslint config was actually created [here](https://github.com/JoernBerkefeld/eslint-config-ssjs), and can be used to verify SSJS code. It's not going to catch everything, but is helpful. Follow the instructions [here](https://github.com/JoernBerkefeld/eslint-config-ssjs) for how to use

* ### Use a JSON Code resource
JSON code resource generates a link you can use to check outputs and it's much faster to load. However, the only issue is that front-end code won't render. Instead you'll see a text-only output.

* ### Using a Try/Catch Block
Unfortunately, when you try to run code in CloudPages, whether it's AMPscript or SSJS, and your code is incorrect, the page will simply render a 500 error. This isn't helpful. However, if you add a Try/Catch block, you'll actually see the error message rendered
```
try {
    /* Code you want to try out */
} catch(error) {
    Write(error)
}
```

## Other Notes
* If working with CloudPages for debugging/testing, keep in mind that it can take up to 5 minutes to load. So don't fret if it looks like your code isn't working.




