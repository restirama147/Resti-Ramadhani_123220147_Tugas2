const formulir = document.querySelector("form");
formulir.addEventListener("submit", (e) => {
    e.preventDefault();

    const elemen_judul = document.querySelector("#judul");
    const elemen_isi = document.querySelector("#isi");
    const elemen_kategori = document.querySelector("#kategori");
    
    const judul = elemen_judul.value;
    const isi = elemen_isi.value;
    const kategori = elemen_kategori.value;

    const id = elemen_judul.dataset.id;

    if (id == ""){
        axios
        .post("http://localhost:5000/buat-catatan",{judul, isi, kategori})
        .then(()=>{
            elemen_judul.value = "";
            elemen_isi.value = "";
            elemen_kategori.value = "";

            getNote();
        })
        .catch((error) => console.log(error.message));
    }else{
        axios
        .put(`http://localhost:5000/edit-catatan/${id}`, {judul, isi, kategori})
        .then(()=>{

            elemen_judul.value = "";
            elemen_isi.value = "";
            elemen_kategori.value = "";

            getNote();
        })
        .catch((error) => console.log(error.message));
    }
});

async function getNote(){
    try {
        const {data} = await axios.get("http://localhost:5000/notes");
        
        const table = document.querySelector("#table-catatan");
        let tampilan = "";
        let no = 1;

        for(const note of await data){
            tampilan += tampilkanCatatan(no, note);
            no++;
        }
        table.innerHTML = tampilan;
        hapusNote();
        editNote();
    } catch (error) {
        console.log(error.message);
    }
}

function tampilkanCatatan(no, note){
    return `
    <tr>
        <td>${no}</td>
        <td class="judul">${note.judul}</td>
        <td class="isi">${note.isi}</td>
        <td class="kategori">${note.kategori}</td>
        <td><button data-id=${note.id} class='btn-edit'>Edit</button></td>
        <td><button data-id=${note.id} class='btn-hapus'>Hapus</button></td>
    </tr>
    `;
}

function hapusNote() {
    const kumpulan_tombol_hapus = document.querySelectorAll(".btn-hapus");

    kumpulan_tombol_hapus.forEach((btn) => {
        btn.addEventListener("click", () => {
        const id = btn.dataset.id;
        axios
            .delete(`http://localhost:5000/hapus-catatan/${id}`)
            .then(() => getNote())
            .catch((error) => console.log(error));
        });
        });
}

function editNote() {
    const kumpulan_tombol_edit = document.querySelectorAll(".btn-edit");

    kumpulan_tombol_edit.forEach((tombol_edit) => {
        tombol_edit.addEventListener("click", () => {
        
        const id = tombol_edit.dataset.id;
        const judul =
            tombol_edit.parentElement.parentElement.querySelector(
                ".judul"
            ).innerText;
            const isi =
            tombol_edit.parentElement.parentElement.querySelector(
                ".isi"
            ).innerText;
            const kategori =
            tombol_edit.parentElement.parentElement.querySelector(
                ".kategori"
            ).innerText;
    
            
            const elemen_judul = document.querySelector("#judul");
            const elemen_isi = document.querySelector("#isi");
            const elemen_kategori = document.querySelector("#kategori");
    
        elemen_judul.dataset.id = id;
        elemen_judul.value = judul;
        elemen_isi.value = isi;
        elemen_kategori.value = kategori;
        });
    });
}

getNote();