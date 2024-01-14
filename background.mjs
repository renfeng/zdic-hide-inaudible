chrome.action.onClicked.addListener(() => {
  chrome.tabs.create({
    url: 'https://www.zdic.net/zd/zb/cc1/',
  });
});
