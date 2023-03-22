INSERT INTO category(
	 name, description, created_at, updated_at)
	VALUES ('Bijoux', 'Bijoux faits à la main avec amour, tous uniques', now(), now()),
    ('Objet', 'Objets uniques selon inspiration', now(), now()),
    ('Meubles mandala', 'L''intuition de Yola', now(), now());

INSERT INTO subcategory(
	 name, description, created_at, updated_at, category_id)
	VALUES ('Boucles d''oreilles', 'Habillez vos lobes', now(), now(), 5);

INSERT INTO product(
	name, description, price, image_url, stock, created_at, updated_at, category_id, subcategory_id)
	VALUES
    ('Boucles 01', 'Boucles 01', 15, '/img/boucles-1.jpg', 1, now(), now(), 5, 1),
    ('Boucles 02', 'Boucles 02', 15, '/img/boucles-2.jpg', 1, now(), now(), 5, 1),
    ('Boucles 03', 'Boucles 03', 15, '/img/boucles-3.jpg', 1, now(), now(), 5, 1),
    ('Boucles 04', 'Boucles 04', 15, '/img/boucles-4.jpg', 1, now(), now(), 5, 1),
    ('Boucles 05', 'Boucles 05', 15, '/img/boucles-5.jpg', 1, now(), now(), 5, 1),
    ('Boucles 06', 'Boucles 06', 15, '/img/boucles-6.jpg', 1, now(), now(), 5, 1),
    ('Boucles 07', 'Boucles 07', 15, '/img/boucles-7.jpg', 1, now(), now(), 5, 1),
    ('Boucles 08', 'Boucles 08', 15, '/img/boucles-8.jpg', 1, now(), now(), 5, 1),
    ('Boucles 09', 'Boucles 09', 15, '/img/boucles-9.jpg', 1, now(), now(), 5, 1),
    ('Boucles 10', 'Boucles 10', 15, '/img/boucles-10.jpg', 1, now(), now(), 5, 1),
    ('Boucles 11', 'Boucles 11', 15, '/img/boucles-11.jpg', 1, now(), now(), 5, 1),
    ('Boucles 12', 'Boucles 12', 15, '/img/boucles-12.jpg', 1, now(), now(), 5, 1),
    ('Boucles 13', 'Boucles 13', 15, '/img/boucles-13.jpg', 1, now(), now(), 5, 1),
    ('Meuble séjour mandala', 'Meuble séjour mandala', 85, '/img/meuble-1.jpg', 1, now(), now(), 7, 1),
    ('Etiquette Boy', 'Etiquette Boy', 12, '/img/objet-1.jpg', 1, now(), now(), 6, 1),
    ('Etiquette Girl', 'Etiquette Girl', 12, '/img/objet-2.jpg', 1, now(), now(), 6, 1),
    ('Tableau sunrise', 'Tableau sunrise', 30, '/img/objet-3.jpg', 1, now(), now(), 6, 1),
    ('Tableau wave', 'Tableau wave', 30, '/img/objet-4.jpg', 1, now(), now(), 6, 1),
    ('Tableau wave2', 'Tableau wave2', 30, '/img/objet-5.jpg', 1, now(), now(), 6, 1),
    ('Tableau flower', 'Tableau flower', 30, '/img/objet-6.jpg', 1, now(), now(), 6, 1);
    
    
    
    
    
    
    ;