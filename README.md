# acia_test
##Discution aux questions supplémentaires
Les tables dans le schéma louis_v004 sont :
Table "ada_002":

Colonnes :

id: Identifiant unique pour chaque enregistrement de la table.
token_id: Identifiant du token associé à l'enregistrement.
embedding: Représentation vectorielle du token.
Fonction : Cette table semble être utilisée pour stocker les représentations vectorielles (embeddings) de différents tokens. Les embeddings sont des vecteurs numériques qui représentent sémantiquement les mots ou tokens et sont couramment utilisés dans le traitement du langage naturel (NLP).

Table "chunk":

Colonnes :

id: Identifiant unique pour chaque enregistrement de la table.
crawl_id: Identifiant de la table "crawl" lié à ce chunk.
title: Titre associé au chunk.
text_content: Contenu textuel du chunk.
Fonction : Cette table semble stocker des fragments de texte (chunks) extraits de pages Web crawlées. Chaque chunk est associé à un enregistrement dans la table "crawl" via l'identifiant "crawl_id". 

Table "crawl":

Colonnes :

id: Identifiant unique pour chaque enregistrement de la table.
url: URL de la page Web crawlée.
title: Titre de la page Web.
Fonction : Cette table semble être utilisée pour stocker les informations relatives à une page Web crawlée. Chaque enregistrement représente une page Web avec son URL et son titre.

Table "link":

Colonnes :

source_crawl: Identifiant de la table "crawl" lié à la page source du lien.
destination_crawl_id: Identifiant de la table "crawl" lié à la page de destination du lien.
Fonction : Cette table semble être utilisée pour stocker des informations sur les liens entre différentes pages Web. Chaque enregistrement contient des références (identifiants) aux pages source et de destination.

Table "query":

Colonnes :

id: Identifiant unique pour chaque enregistrement de la table.
query: Requête associée à l'enregistrement.
tokens: Liste de tokens associés à la requête.
embedding: Représentation vectorielle de la requête.
encoding: Encodage de la requête.
model: Modèle utilisé pour la requête.
Fonction : Cette table semble être utilisée pour stocker des informations sur les requêtes utilisées dans le traitement du langage naturel (NLP). Chaque enregistrement contient une requête, des tokens associés, des embeddings, un encodage et le modèle utilisé.

Table "score":

Colonnes :

entity_id: Identifiant d'une entité (peut être lié à une autre table).
score: Score numérique attribué à l'entité.
score_type: Type de score (par exemple, "escore_type").
Fonction : Cette table semble être utilisée pour stocker des scores attribués à des entités, sans spécification claire de leur source ou de leur signification. Le score est représenté par une valeur numérique et peut être associé à une entité spécifique identifiée par "entity_id".

Table "token":

Colonnes :

id: Identifiant unique pour chaque enregistrement de la table.
chunk_id: Identifiant du chunk associé au token.
tokens: Liste de tokens.
Fonction : Cette table semble être utilisée pour stocker des tokens ou des mots individuels extraits des chunks. Chaque enregistrement est associé à un chunk via l'identifiant "chunk_id" et contient une liste de tokens.

