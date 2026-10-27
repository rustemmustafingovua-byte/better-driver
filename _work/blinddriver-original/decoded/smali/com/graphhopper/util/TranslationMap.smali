.class public Lcom/graphhopper/util/TranslationMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/util/TranslationMap$TranslationHashMap;
    }
.end annotation


# static fields
.field private static final LOCALES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final translations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/Translation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 49

    const-string v47, "zh_HK"

    const-string v48, "zh_TW"

    const-string v1, "ar"

    const-string v2, "ast"

    const-string v3, "bg"

    const-string v4, "bn_BN"

    const-string v5, "ca"

    const-string v6, "cs_CZ"

    const-string v7, "da_DK"

    const-string v8, "de_DE"

    const-string v9, "el"

    const-string v10, "eo"

    const-string v11, "es"

    const-string v12, "en_US"

    const-string v13, "fa"

    const-string v14, "fil"

    const-string v15, "fi"

    const-string v16, "fr_FR"

    const-string v17, "fr_CH"

    const-string v18, "gl"

    const-string v19, "he"

    const-string v20, "hr_HR"

    const-string v21, "hsb"

    const-string v22, "hu_HU"

    const-string v23, "in_ID"

    const-string v24, "it"

    const-string v25, "ja"

    const-string v26, "ko"

    const-string v27, "kz"

    const-string v28, "lt_LT"

    const-string v29, "mn"

    const-string v30, "nb_NO"

    const-string v31, "ne"

    const-string v32, "nl"

    const-string v33, "pl_PL"

    const-string v34, "pt_BR"

    const-string v35, "pt_PT"

    const-string v36, "ro"

    const-string v37, "ru"

    const-string v38, "sk"

    const-string v39, "sl_SI"

    const-string v40, "sr_RS"

    const-string v41, "sv_SE"

    const-string v42, "tr"

    const-string v43, "uk"

    const-string v44, "uz"

    const-string v45, "vi_VN"

    const-string v46, "zh_CN"

    filled-new-array/range {v1 .. v48}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/TranslationMap;->LOCALES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    return-void
.end method

.method public static countOccurence(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method private postImportHook()V
    .locals 11

    const-string v0, "en"

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/TranslationMap;->get(Ljava/lang/String;)Lcom/graphhopper/util/Translation;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphhopper/util/Translation;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/Translation;

    invoke-interface {v2}, Lcom/graphhopper/util/Translation;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\%"

    invoke-static {v7, v8}, Lcom/graphhopper/util/TranslationMap;->countOccurence(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v8}, Lcom/graphhopper/util/TranslationMap;->countOccurence(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v9, "\n"

    const-string v10, "->"

    if-eq v7, v8, :cond_2

    invoke-interface {v2}, Lcom/graphhopper/util/Translation;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " - error in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5, v10, v6, v9}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "tmp"

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v8, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-interface {v2}, Lcom/graphhopper/util/Translation;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " - error "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5, v10, v6, v9}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gtz p0, :cond_4

    return-void

    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lcom/graphhopper/util/Translation;)V
    .locals 4

    invoke-interface {p1}, Lcom/graphhopper/util/Translation;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {p1}, Lcom/graphhopper/util/Translation;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {p1}, Lcom/graphhopper/util/Translation;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "he"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "id"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public doImport()Lcom/graphhopper/util/TranslationMap;
    .locals 5

    .line 7
    :try_start_0
    sget-object v0, Lcom/graphhopper/util/TranslationMap;->LOCALES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    new-instance v2, Lcom/graphhopper/util/TranslationMap$TranslationHashMap;

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/graphhopper/util/TranslationMap$TranslationHashMap;-><init>(Ljava/util/Locale;)V

    .line 9
    const-class v3, Lcom/graphhopper/util/TranslationMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/graphhopper/util/TranslationMap$TranslationHashMap;->doImport(Ljava/io/InputStream;)Lcom/graphhopper/util/TranslationMap$TranslationHashMap;

    .line 10
    invoke-virtual {p0, v2}, Lcom/graphhopper/util/TranslationMap;->add(Lcom/graphhopper/util/Translation;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/util/TranslationMap;->postImportHook()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public doImport(Ljava/io/File;)Lcom/graphhopper/util/TranslationMap;
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/graphhopper/util/TranslationMap;->LOCALES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    new-instance v2, Lcom/graphhopper/util/TranslationMap$TranslationHashMap;

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/graphhopper/util/TranslationMap$TranslationHashMap;-><init>(Ljava/util/Locale;)V

    .line 3
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/TranslationMap$TranslationHashMap;->doImport(Ljava/io/InputStream;)Lcom/graphhopper/util/TranslationMap$TranslationHashMap;

    .line 4
    invoke-virtual {p0, v2}, Lcom/graphhopper/util/TranslationMap;->add(Lcom/graphhopper/util/Translation;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/util/TranslationMap;->postImportHook()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Lcom/graphhopper/util/Translation;
    .locals 2

    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/util/Translation;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/Translation;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getWithFallBack(Ljava/util/Locale;)Lcom/graphhopper/util/Translation;
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/TranslationMap;->get(Ljava/lang/String;)Lcom/graphhopper/util/Translation;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/TranslationMap;->get(Ljava/lang/String;)Lcom/graphhopper/util/Translation;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "en"

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/TranslationMap;->get(Ljava/lang/String;)Lcom/graphhopper/util/Translation;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/TranslationMap;->translations:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
