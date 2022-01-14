RegExp saraReg = new RegExp(
  r"https:\/\/([\w\.]+)?(thesaracen\.com)\/?([\w|\d|\-]+)?\/?([\w|\d|\%|]+)?\/?([\w|\d]+)?",
  caseSensitive: false,
  multiLine: false,
);

RegExp saraGoodsReg = new RegExp(
  r"\d{6}",
  caseSensitive: false,
  multiLine: false,
);

RegExp commaReg = new RegExp(
  r"\B(?=(\d{3})+(?!\d))",
  caseSensitive: false,
  multiLine: false,
);




// export const comma = (num: number) => {
// const reg = /\B(?=(\d{3})+(?!\d))/g;
//
// return num.toFixed(Math.max(0)).replace(reg, ',')+'원';
// };
//
// export const isStrNum = (asValue: string): boolean => {
// const regExp = /^[\d]+$/;
//
// return regExp.test(asValue);
// };
//
// export const dash = (num: number) => {
// const reg = /(\d\d\d\d)(\d\d)(\d\d)/g;
//
// return num.toString().replace(reg, '$1-$2-$3');
// };