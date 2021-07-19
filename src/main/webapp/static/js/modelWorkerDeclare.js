var btn = document.getElementsByClassName('met1')[0];
var addrShow = document.getElementById('addr-show');
var prov = document.getElementById('prov');
var city = document.getElementById('city');
var country = document.getElementById('country');

/*���ڱ��浱ǰ��ѡ��ʡ����*/
var current = {
    prov: '',
    city: '',
    country: ''
};

/*�Զ�����ʡ���б�*/
(function showProv() {
    btn.disabled = true;
    var len = provence.length;
    for (var i = 0; i < len; i++) {
        var provOpt = document.createElement('option');
        provOpt.value = provOpt.innerText = provence[i]['name'];
        prov.appendChild(provOpt);
    }
})();

/*������ѡ��ʡ������ʾ�����б�*/
function showCity(obj) {
    var val = obj.options[obj.selectedIndex].value;
    if (val != current.prov) {
        current.prov = val;
        addrShow.value = '';
        btn.disabled = true;
        city.length = 1;
        country.length = 1;
    }

    if (val != '') {
        //����ʡ������
        var len = provence.length;
        let provIndex = 0;
        for (var i = 0; i < len; i++) {
            if (val == provence[i]['name']) {
                provIndex = i;
            }
        }

        var cityLen = provence[provIndex]["city"].length;
        for (var j = 0; j < cityLen; j++) {
            var cityOpt = document.createElement('option');
            cityOpt.value = cityOpt.innerText = provence[provIndex]["city"][j].name;
            city.appendChild(cityOpt);
        }
    }
}

/*������ѡ�ĳ�������ʾ�����б�*/
function showCountry(obj) {
    var val = obj.options[obj.selectedIndex].value;
    if (val != current.city) {
        current.city = val;
        addrShow.value = '';
        btn.disabled = true;
        country.length = 1; //���֮ǰ������ֻ����һ��Ĭ��ѡ��
    }

    //����ʡ������
    var provLen = provence.length;
    let provIndex = 0;
    for (var i = 0; i < provLen; i++) {
        if (current.prov == provence[i]['name']) {
            provIndex = i;
            break;
        }
    }

    //���ҳ��е�����
    var cityLen = provence[provIndex]["city"].length;
    let cityIndex = 0;
    for (var i = 0; i < cityLen; i++) {
        if (current.city == provence[provIndex]["city"][i].name) {
            cityIndex = i;
            break;
        }
    }

    if (val != '') {
        var countryLen = provence[provIndex]["city"][cityIndex].districtAndCounty.length;
        if (countryLen == 0) {
            addrShow.value = current.prov + '-' + current.city;
            return;
        }
        for (var n = 0; n < countryLen; n++) {
            var countryOpt = document.createElement('option');
            countryOpt.innerText = provence[provIndex]["city"][cityIndex].districtAndCounty[n];
            countryOpt.value = provence[provIndex]["city"][cityIndex].districtAndCounty[n];
            country.appendChild(countryOpt);
        }
    }
}

/*ѡ������֮��Ĵ�����*/
function selectCountry(obj) {
    current.country = obj.options[obj.selectedIndex].value;
    if ((current.city != '') && (current.country != '')) {
        btn.disabled = false;
    }
}

/*���ȷ����ť��ʾ�û���ѡ�ĵ�ַ*/
function showAddr() {
    addrShow.value = current.prov + '-' + current.city + '-' + current.country;
}