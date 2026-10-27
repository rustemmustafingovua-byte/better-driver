.class public final Lua/nav/geo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lyc/e;

.field public static final g:Lr9/i;

.field public static final h:Lr9/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lu9/t;

.field public final c:Ljava/io/File;

.field public final d:Lx9/l0;

.field public final e:Lx9/l0;

.field public final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/geo/c;->Companion:Lyc/e;

    new-instance v0, Lr9/i;

    const-string v1, "^[0-9a-fA-F]{64}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lua/nav/geo/c;->g:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "^[a-z0-9_-]{1,32}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lua/nav/geo/c;->h:Lr9/i;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lu9/t;)V
    .locals 8

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/nav/geo/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lua/nav/geo/c;->b:Lu9/t;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "geo"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    iput-object p2, p0, Lua/nav/geo/c;->c:Ljava/io/File;

    new-instance v1, Lyc/d;

    const/4 v5, 0x0

    const-string v7, ""

    sget-object v2, Lu8/r;->l:Lu8/r;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v1 .. v7}, Lyc/d;-><init>(Ljava/util/List;Ljava/util/List;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/geo/c;->d:Lx9/l0;

    iput-object p1, p0, Lua/nav/geo/c;->e:Lx9/l0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Lua/nav/geo/c;->d()V

    return-void
.end method

.method public static h(Lua/nav/geo/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/util/List;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "query"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v4, "<get-values>(...)"

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/p;

    new-instance v7, Lyc/k;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {v7, v4}, Lyc/k;-><init>(Lyc/p;)V

    sget-object v4, Lu8/r;->l:Lu8/r;

    const-string v8, "removeAt(...)"

    const-string v9, ""

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lyc/c;->a:Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "toLowerCase(...)"

    invoke-static {v12, v13}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    move v15, v6

    :goto_1
    const/16 v17, 0x20

    if-ge v15, v14, :cond_6

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object/from16 v19, v0

    const-string v0, "\'\u2019\u02bc\u02b9\u2032`\u00b4"

    const/4 v1, 0x6

    invoke-static {v0, v5, v6, v1}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v0

    if-gez v0, :cond_5

    const/16 v0, 0x44a

    if-eq v5, v0, :cond_5

    const/16 v0, 0x44c

    if-ne v5, v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lyc/c;->a:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    :cond_1
    const/16 v0, 0x30

    if-gt v0, v5, :cond_2

    const/16 v0, 0x3a

    if-ge v5, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x61

    if-gt v0, v5, :cond_3

    const/16 v0, 0x7b

    if-ge v5, v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x430

    if-gt v0, v5, :cond_4

    const/16 v0, 0x450

    if-ge v5, v0, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v5, v17

    :goto_2
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v19

    goto :goto_1

    :cond_6
    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v5, v1, [C

    aput-char v17, v5, v6

    invoke-static {v0, v5}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_7

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string v21, " "

    const/16 v24, 0x0

    const/16 v25, 0x3e

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v5

    invoke-static/range {v20 .. v25}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [C

    aput-char v17, v5, v6

    invoke-static {v0, v5}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v9

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_a

    goto :goto_5

    :cond_a
    sget-object v12, Lyc/c;->b:Ljava/lang/Object;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_9

    move-object v5, v12

    goto :goto_5

    :cond_b
    sget-object v12, Lyc/c;->c:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-lt v0, v12, :cond_d

    invoke-static {v10}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_d

    invoke-static {v10}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v14, 0x430

    if-gt v14, v0, :cond_d

    const/16 v14, 0x450

    if-ge v0, v14, :cond_d

    sget-object v0, Lyc/c;->a:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v14, "get(...)"

    invoke-static {v0, v14}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    sget-object v14, Lyc/c;->e:Lr9/i;

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "toLowerCase(...)"

    invoke-static {v0, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v1

    invoke-static {v10}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    move/from16 v16, v1

    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v11, :cond_10

    sget-object v0, Lyc/c;->a:Ljava/lang/Object;

    invoke-static {v10}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "token"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lyc/c;->e:Lr9/i;

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "toLowerCase(...)"

    invoke-static {v0, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v8, 0x2f

    invoke-static {v0, v1, v8}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v6

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_f

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    sget-object v14, Lyc/c;->d:Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Character;

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v13

    :cond_e
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    const-string v21, ""

    const/16 v24, 0x0

    const/16 v25, 0x3e

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v1

    invoke-static/range {v20 .. v25}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v8, "compile(...)"

    invoke-static {v1, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "input"

    invoke-static {v0, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "replaceAll(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lyc/c;->f:Lr9/i;

    invoke-virtual {v1, v0, v9}, Lr9/i;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2019"

    const-string v8, ""

    invoke-static {v0, v1, v8}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v8, ""

    invoke-static {v0, v1, v8}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    new-instance v1, Lyc/j;

    invoke-direct {v1, v0, v5, v10}, Lyc/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v3

    goto/16 :goto_1f

    :cond_11
    invoke-virtual {v7, v10, v1, v2}, Lyc/k;->b(Ljava/util/ArrayList;Lyc/j;Lua/nav/routing/GeoPoint;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v12, :cond_2f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v6

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2a

    add-int/lit8 v13, v10, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v11, 0x4

    if-lt v15, v11, :cond_12

    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_13

    :cond_12
    move-object/from16 v32, v0

    move-object/from16 v31, v3

    move-object/from16 v22, v4

    move-object/from16 v33, v5

    move-object/from16 v23, v8

    move-object/from16 v25, v9

    move/from16 v30, v13

    goto/16 :goto_18

    :cond_13
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v15, 0x8

    if-lt v11, v15, :cond_14

    const/4 v11, 0x2

    goto :goto_a

    :cond_14
    move/from16 v11, v16

    :goto_a
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x3

    invoke-static {v12, v14}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lyc/k;->b:Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_15

    move-object v6, v9

    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v22, v4

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v12, :cond_16

    move-object/from16 v23, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v24, v4

    move-object/from16 v18, v6

    move-object/from16 v25, v9

    move/from16 v4, v16

    const/4 v6, 0x3

    invoke-virtual {v14, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v4, "substring(...)"

    invoke-static {v9, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v24, 0x1

    move-object/from16 v6, v18

    move-object/from16 v8, v23

    move-object/from16 v9, v25

    const/16 v16, 0x1

    goto :goto_b

    :cond_16
    move-object/from16 v23, v8

    move-object/from16 v25, v9

    const/4 v6, 0x3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-string v9, "iterator(...)"

    invoke-static {v8, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    const-string v12, "next(...)"

    invoke-static {v9, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    iget-object v12, v7, Lyc/k;->a:Lyc/p;

    iget-object v12, v12, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "SELECT DISTINCT t FROM tok WHERE t >= ? AND t < ? LIMIT ?"

    const-string v6, "\uffff"

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v24, 0x1388

    move-object/from16 v26, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v9, v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v15, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_17

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_15

    :cond_17
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v6, :cond_25

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_24

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    sub-int v15, v15, v24

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-le v15, v11, :cond_18

    goto :goto_e

    :cond_18
    sget-object v15, Lyc/k;->Companion:Lyc/i;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v24, v6

    new-array v6, v15, [[I

    move-object/from16 v27, v6

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v15, :cond_19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v29, v6

    add-int/lit8 v6, v28, 0x1

    new-array v6, v6, [I

    aput-object v6, v27, v29

    add-int/lit8 v6, v29, 0x1

    const/16 v16, 0x1

    goto :goto_f

    :cond_19
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_1a

    const/4 v15, 0x0

    :goto_10
    aget-object v28, v27, v15

    const/16 v21, 0x0

    aput v15, v28, v21

    if-eq v15, v6, :cond_1b

    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    :cond_1a
    const/16 v21, 0x0

    :cond_1b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_1c

    move/from16 v15, v21

    :goto_11
    aget-object v28, v27, v21

    aput v15, v28, v15

    if-eq v15, v6, :cond_1c

    add-int/lit8 v15, v15, 0x1

    const/16 v21, 0x0

    goto :goto_11

    :cond_1c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v15, 0x1

    if-gt v15, v6, :cond_21

    move-object/from16 v28, v8

    move/from16 v29, v9

    move v8, v15

    :goto_12
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v15, v9, :cond_1f

    const/4 v15, 0x1

    :goto_13
    move/from16 v30, v13

    add-int/lit8 v13, v8, -0x1

    move-object/from16 v31, v3

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v32, v0

    add-int/lit8 v0, v15, -0x1

    move-object/from16 v33, v5

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v3, v5, :cond_1d

    const/4 v3, 0x0

    goto :goto_14

    :cond_1d
    const/4 v3, 0x1

    :goto_14
    aget-object v5, v27, v8

    aget-object v34, v27, v13

    aget v35, v34, v15

    move/from16 v36, v3

    const/16 v16, 0x1

    add-int/lit8 v3, v35, 0x1

    aget v35, v5, v0

    move-object/from16 v37, v5

    add-int/lit8 v5, v35, 0x1

    aget v34, v34, v0

    add-int v2, v34, v36

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v37, v15

    move/from16 v2, v16

    if-le v8, v2, :cond_1e

    if-le v15, v2, :cond_1e

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v15, -0x2

    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_1e

    add-int/lit8 v2, v8, -0x2

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_1e

    aget-object v0, v27, v8

    aget v5, v0, v15

    aget-object v2, v27, v2

    aget v2, v2, v3

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v15

    :cond_1e
    if-eq v15, v9, :cond_20

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v0, v32

    move-object/from16 v5, v33

    goto :goto_13

    :cond_1f
    move-object/from16 v32, v0

    move-object/from16 v31, v3

    move-object/from16 v33, v5

    move/from16 v30, v13

    :cond_20
    if-eq v8, v6, :cond_22

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v0, v32

    move-object/from16 v5, v33

    const/4 v15, 0x1

    goto/16 :goto_12

    :cond_21
    move-object/from16 v32, v0

    move-object/from16 v31, v3

    move-object/from16 v33, v5

    move-object/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v13

    :cond_22
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v0, v27, v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    aget v0, v0, v2

    if-gt v0, v11, :cond_23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lsc/u0;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lsc/u0;-><init>(I)V

    new-instance v3, Lid/g;

    const/4 v15, 0x1

    invoke-direct {v3, v15, v2}, Lid/g;-><init>(ILi9/e;)V

    invoke-virtual {v4, v12, v0, v3}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    :cond_23
    move-object/from16 v2, p2

    move/from16 v6, v24

    move-object/from16 v8, v28

    move/from16 v9, v29

    move/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v0, v32

    move-object/from16 v5, v33

    goto/16 :goto_e

    :cond_24
    move/from16 v29, v9

    move-object/from16 v2, p2

    goto/16 :goto_e

    :cond_25
    move-object/from16 v2, p2

    move-object/from16 v8, v26

    const/4 v6, 0x3

    goto/16 :goto_c

    :goto_15
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_26
    move-object/from16 v32, v0

    move-object/from16 v31, v3

    move-object/from16 v33, v5

    move/from16 v30, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "<get-entries>(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Lsc/t0;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lsc/t0;-><init>(I)V

    new-instance v3, Lsc/t0;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lsc/t0;-><init>(I)V

    const/4 v4, 0x2

    new-array v5, v4, [Li9/c;

    const/16 v21, 0x0

    aput-object v2, v5, v21

    const/16 v16, 0x1

    aput-object v3, v5, v16

    invoke-static {v5}, Ll9/a;->d([Li9/c;)Lm0/h1;

    move-result-object v2

    invoke-static {v0, v2}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_27
    :goto_17
    const/4 v4, 0x2

    goto :goto_19

    :goto_18
    move-object/from16 v2, v22

    goto :goto_17

    :goto_19
    invoke-static {v2, v4}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lyc/j;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    invoke-virtual {v7, v3, v1, v2}, Lyc/k;->b(Ljava/util/ArrayList;Lyc/j;Lua/nav/routing/GeoPoint;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_1b
    if-ge v12, v8, :cond_28

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v12, v12, 0x1

    check-cast v9, Lyc/a;

    iget-wide v13, v9, Lyc/a;->f:D

    const/16 v11, 0x14

    move-object v15, v7

    int-to-double v6, v11

    sub-double v42, v13, v6

    iget-object v6, v9, Lyc/a;->a:Lyc/b;

    iget-object v7, v9, Lyc/a;->b:Ljava/lang/String;

    iget-object v11, v9, Lyc/a;->c:Ljava/lang/String;

    iget-wide v13, v9, Lyc/a;->d:D

    move-object/from16 v24, v5

    iget-wide v4, v9, Lyc/a;->e:D

    const-string v9, "title"

    invoke-static {v7, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "subtitle"

    invoke-static {v11, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v34, Lyc/a;

    move-wide/from16 v40, v4

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v11

    move-wide/from16 v38, v13

    invoke-direct/range {v34 .. v43}, Lyc/a;-><init>(Lyc/b;Ljava/lang/String;Ljava/lang/String;DDD)V

    move-object/from16 v4, v24

    move-object/from16 v5, v34

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    move-object v7, v15

    const/4 v4, 0x2

    const/16 v6, 0xa

    goto :goto_1b

    :cond_28
    move-object v4, v5

    move-object v15, v7

    move-object/from16 v5, v33

    invoke-static {v4, v5}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    const/4 v4, 0x2

    goto :goto_1a

    :cond_29
    move-object/from16 v2, p2

    move v11, v4

    move-object/from16 v4, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v25

    move/from16 v10, v30

    move-object/from16 v3, v31

    move-object/from16 v0, v32

    move-object/from16 v5, v33

    const/4 v6, 0x0

    const/4 v12, 0x3

    goto/16 :goto_9

    :cond_2a
    move-object/from16 v32, v0

    move-object/from16 v31, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    :cond_2b
    :goto_1c
    if-ge v6, v3, :cond_2d

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    move-object v7, v4

    check-cast v7, Lyc/a;

    iget-object v8, v1, Lyc/j;->b:Ljava/lang/String;

    if-eqz v8, :cond_2c

    iget-object v7, v7, Lyc/a;->a:Lyc/b;

    sget-object v8, Lyc/b;->l:Lyc/b;

    if-ne v7, v8, :cond_2b

    :cond_2c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    move-object/from16 v1, v32

    invoke-static {v1, v0}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lyc/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    :goto_1d
    move-object/from16 v0, v31

    goto :goto_1f

    :cond_2e
    move-object/from16 v1, v32

    goto :goto_1e

    :cond_2f
    move-object v1, v0

    move-object/from16 v31, v3

    :goto_1e
    move-object v4, v1

    goto :goto_1d

    :goto_1f
    invoke-static {v4, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    move-object/from16 v1, p1

    move-object v3, v0

    move-object/from16 v0, v19

    goto/16 :goto_0

    :cond_30
    move-object v0, v3

    new-instance v1, Lyc/h;

    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lyc/h;-><init>(I)V

    invoke-static {v0, v1}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    const/16 v15, 0x8

    invoke-static {v0, v15}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, ".db"

    invoke-static {p1, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lua/nav/geo/c;->c:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 12

    const-string v0, "id"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-boolean v1, v1, Lyc/d;->c:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lua/nav/geo/PackInfo;

    iget-object v4, v4, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v4, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    check-cast v2, Lua/nav/geo/PackInfo;

    if-nez v2, :cond_3

    :goto_1
    return-void

    :cond_3
    sget-object v1, Lua/nav/geo/c;->Companion:Lyc/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyc/e;->a(Lua/nav/geo/PackInfo;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lyc/d;

    const/4 v10, 0x0

    const/16 v11, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lyc/d;

    const/4 v10, 0x0

    const/16 v11, 0x23

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v0, Lp/b;

    const/16 v1, 0x11

    invoke-direct {v0, p0, p1, v3, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p1, 0x3

    iget-object p0, p0, Lua/nav/geo/c;->b:Lu9/t;

    invoke-static {p0, v3, v3, v0, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()V
    .locals 15

    iget-object v0, p0, Lua/nav/geo/c;->c:Ljava/io/File;

    new-instance v1, Lld/o;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lld/o;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    move v5, v1

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v4, :cond_4

    aget-object v0, v2, v5

    :try_start_0
    sget-object v7, Lgd/h;->c:Lia/r;

    sget-object v8, Lua/nav/geo/PackInfo;->Companion:Lua/nav/geo/PackInfo$Companion;

    invoke-virtual {v8}, Lua/nav/geo/PackInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v9, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v9}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/geo/PackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1
    instance-of v7, v0, Lt8/l;

    if-eqz v7, :cond_1

    move-object v0, v6

    :cond_1
    check-cast v0, Lua/nav/geo/PackInfo;

    if-eqz v0, :cond_2

    iget-object v7, v0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lua/nav/geo/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v6, v0

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v4, "<get-values>(...)"

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0}, Lyc/p;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_5
    iget-object v0, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_7

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    check-cast v5, Lua/nav/geo/PackInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    iget-object v8, v5, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    new-instance v9, Lyc/p;

    invoke-virtual {p0, v8}, Lua/nav/geo/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getPath(...)"

    invoke-static {v10, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lyc/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v8, "GeoPacks"

    iget-object v5, v5, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    move v0, v7

    goto :goto_3

    :cond_7
    monitor-exit v2

    iget-object v0, p0, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lyc/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_8
    :goto_5
    if-ge v1, v2, :cond_9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    move-object v5, v4

    check-cast v5, Lua/nav/geo/PackInfo;

    iget-object v9, p0, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    iget-object v5, v5, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v14}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v6, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :goto_6
    monitor-exit v2

    throw p0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/d;

    iget-boolean v0, v0, Lyc/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lua/nav/geo/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lua/nav/geo/a;-><init>(Lua/nav/geo/c;Ly8/c;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lua/nav/geo/c;->b:Lu9/t;

    invoke-static {p0, v1, v1, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final f(Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v0, p2

    instance-of v1, v0, Lyc/f;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lyc/f;

    iget v2, v1, Lyc/f;->r:I

    const/high16 v4, -0x80000000

    and-int v6, v2, v4

    if-eqz v6, :cond_0

    sub-int/2addr v2, v4

    iput v2, v1, Lyc/f;->r:I

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lyc/f;

    invoke-direct {v1, v3, v0}, Lyc/f;-><init>(Lua/nav/geo/c;La9/c;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lyc/f;->p:Ljava/lang/Object;

    sget-object v8, Lz8/a;->l:Lz8/a;

    iget v1, v7, Lyc/f;->r:I

    sget-object v9, Lt8/z;->a:Lt8/z;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v10, :cond_1

    iget-object v1, v7, Lyc/f;->o:Ljava/io/File;

    iget-object v2, v7, Lyc/f;->n:Ljava/io/File;

    iget-object v3, v7, Lyc/f;->m:Lua/nav/geo/c;

    iget-object v4, v7, Lyc/f;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v5, v4

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v3, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lua/nav/geo/PackInfo;

    iget-object v4, v4, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move-object v2, v11

    :goto_2
    move-object v1, v2

    check-cast v1, Lua/nav/geo/PackInfo;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lyc/d;

    const/16 v18, 0x0

    const/16 v19, 0x3b

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v9

    :cond_5
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lyc/d;

    const/16 v18, 0x0

    const/16 v19, 0x23

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v2, Ljava/io/File;

    const-string v0, ".db.gz.part"

    invoke-static {v5, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lua/nav/geo/c;->c:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v0, ".db.part"

    invoke-static {v5, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v12, Lba/d;->n:Lba/d;

    new-instance v0, Lua/nav/geo/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v6

    const/4 v6, 0x0

    :try_start_2
    invoke-direct/range {v0 .. v6}, Lua/nav/geo/b;-><init>(Lua/nav/geo/PackInfo;Ljava/io/File;Lua/nav/geo/c;Ljava/io/File;Ljava/lang/String;Ly8/c;)V

    iput-object v5, v7, Lyc/f;->l:Ljava/lang/String;

    iput-object v3, v7, Lyc/f;->m:Lua/nav/geo/c;

    iput-object v2, v7, Lyc/f;->n:Ljava/io/File;

    iput-object v4, v7, Lyc/f;->o:Ljava/io/File;

    iput v10, v7, Lyc/f;->r:I

    invoke-static {v12, v0, v7}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v8, :cond_6

    return-object v8

    :cond_6
    move-object v1, v4

    move-object v4, v5

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Lua/nav/geo/c;->d()V

    iget-object v0, v3, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lyc/d;

    const/16 v18, 0x0

    const/16 v19, 0x37

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x64

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lyc/d;

    const/16 v18, 0x0

    const/16 v19, 0x3b

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v9

    :catchall_1
    move-exception v0

    :goto_4
    move-object v1, v4

    goto/16 :goto_7

    :catch_1
    move-exception v0

    :goto_5
    move-object v1, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v4, v6

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v6

    goto :goto_5

    :goto_6
    :try_start_4
    const-string v4, "GeoPacks"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lyc/d;

    sget-object v5, Lgd/h;->a:Lr9/i;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "\u043f\u043e\u043c\u0438\u043b\u043a\u0430"

    :cond_7
    invoke-static {v0}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u043f\u0430\u043a\u0435\u0442: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x2f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v19}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v11, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, v3, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lyc/d;

    const/16 v18, 0x0

    const/16 v19, 0x3b

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v11, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v9

    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, v3, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyc/d;

    const/4 v9, 0x0

    const/16 v10, 0x3b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v11, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method

.method public final g(La9/c;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lyc/g;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyc/g;

    iget v3, v2, Lyc/g;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyc/g;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyc/g;

    invoke-direct {v2, v0, v1}, Lyc/g;-><init>(Lua/nav/geo/c;La9/c;)V

    :goto_0
    iget-object v1, v2, Lyc/g;->o:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lyc/g;->q:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lua/nav/geo/c;->d:Lx9/l0;

    if-eqz v4, :cond_3

    if-ne v4, v5, :cond_2

    iget v4, v2, Lyc/g;->n:I

    iget-object v8, v2, Lyc/g;->m:Ljava/util/Iterator;

    iget-object v9, v2, Lyc/g;->l:Ljava/util/List;

    :try_start_0
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v1, v4

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->b:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lua/nav/geo/PackInfo;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyc/d;

    iget-object v10, v10, Lyc/d;->a:Ljava/util/List;

    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/geo/PackInfo;

    iget-object v11, v11, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v12, v9, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v11, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    move v9, v8

    move-object v8, v1

    move v1, v9

    move-object v9, v4

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/geo/PackInfo;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lyc/d;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    iget-object v12, v1, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " \u0437 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v6, v10}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v1, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iput-object v9, v2, Lyc/g;->l:Ljava/util/List;

    iput-object v8, v2, Lyc/g;->m:Ljava/util/Iterator;

    iput v4, v2, Lyc/g;->n:I

    iput v5, v2, Lyc/g;->q:I

    invoke-virtual {v0, v1, v2}, Lua/nav/geo/c;->f(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    return-object v3

    :goto_3
    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/d;

    iget-object v4, v4, Lyc/d;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_8

    :cond_9
    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lyc/d;

    const-string v14, ""

    const/16 v15, 0x1b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v6, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :goto_4
    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lyc/d;

    const-string v14, ""

    const/16 v15, 0x1b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v6, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method
