.class public final Lmb/c7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Ljava/util/HashSet;

.field public static final u:Ljava/util/HashSet;

.field public static final v:Ljava/util/HashMap;


# instance fields
.field public final a:Lmb/b7;

.field public final b:Lmb/b7;

.field public final c:Lmb/b7;

.field public final d:Lmb/b7;

.field public final e:Lmb/b7;

.field public final f:Lmb/b7;

.field public final g:Lmb/b7;

.field public final h:Lmb/b7;

.field public final i:Lmb/b7;

.field public final j:Lmb/b7;

.field public final k:Lmb/b7;

.field public final l:Lmb/b7;

.field public final m:Lmb/b7;

.field public final n:Lmb/b7;

.field public final o:Lmb/b7;

.field public final p:Lmb/b7;

.field public final q:Lmb/b7;

.field public final r:Lmb/b7;

.field public final s:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    sput-object v16, Lmb/c7;->t:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmb/c7;->u:Ljava/util/HashSet;

    new-instance v48, Ljava/util/HashSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmb/c7;->v:Ljava/util/HashMap;

    const-string v61, "."

    const-string v62, "[ ]"

    const-string v2, "="

    const-string v3, "*="

    const-string v4, "/="

    const-string v5, "%="

    const-string v6, "+="

    const-string v7, "-="

    const-string v8, "<<="

    const-string v9, ">>="

    const-string v10, ">>>="

    const-string v11, "&="

    const-string v12, "^="

    const-string v13, "|="

    const-string v15, "?:"

    const-string v17, "||"

    const-string v19, "&&"

    const-string v21, "|"

    const-string v23, "^"

    const-string v25, "&"

    const-string v27, "=="

    const-string v28, "!="

    const-string v30, "<"

    const-string v31, ">"

    const-string v32, "<="

    const-string v33, ">="

    const-string v34, "instanceof"

    const-string v36, "<<"

    const-string v37, ">>"

    const-string v38, ">>>"

    const-string v40, "+"

    const-string v41, "-"

    const-string v43, "*"

    const-string v44, "/"

    const-string v45, "%"

    const-string v47, "cast"

    const-string v49, "++x"

    const-string v50, "--x"

    const-string v51, "+x"

    const-string v52, "-x"

    const-string v53, "~x"

    const-string v54, "!x"

    const-string v56, "x++"

    const-string v57, "x--"

    const-string v59, "new"

    move-object v14, v1

    move-object/from16 v18, v16

    move-object/from16 v20, v16

    move-object/from16 v22, v16

    move-object/from16 v24, v16

    move-object/from16 v26, v16

    move-object/from16 v29, v16

    move-object/from16 v35, v16

    move-object/from16 v39, v16

    move-object/from16 v42, v16

    move-object/from16 v46, v1

    move-object/from16 v55, v48

    move-object/from16 v58, v16

    move-object/from16 v60, v16

    filled-new-array/range {v1 .. v62}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Set;

    add-int/lit8 v2, v2, 0x1

    :goto_1
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    aget-object v4, v0, v3

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmb/c7;->v:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/StringWriter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmb/b7;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->a:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->b:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->c:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->d:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->e:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->f:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->g:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->h:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->i:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->j:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->k:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->l:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->m:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->n:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->o:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->p:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->q:Lmb/b7;

    new-instance v0, Lmb/b7;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmb/b7;-><init>(Lmb/c7;I)V

    iput-object v0, p0, Lmb/c7;->r:Lmb/b7;

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lorg/codehaus/janino/util/d;

    invoke-direct {v1, p1}, Lorg/codehaus/janino/util/d;-><init>(Ljava/io/StringWriter;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    return-void
.end method

.method public static a(Lmb/c7;Lmb/k2;)V
    .locals 3

    invoke-virtual {p0, p1}, Lmb/c7;->q(Lmb/y1;)V

    iget-object v0, p1, Lmb/k2;->g:[Lmb/z5;

    iget-object v1, p1, Lmb/k2;->e:[Lmb/x3;

    invoke-virtual {p0, v1}, Lmb/c7;->u([Lmb/x3;)V

    iget-object p1, p1, Lmb/k2;->f:Lmb/s5;

    invoke-virtual {p0, p1}, Lmb/c7;->w(Lmb/s5;)V

    iget-object p1, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lmb/c7;->z(Lmb/z5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public static b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lmb/c7;->j(Ljava/lang/String;Lmb/c1;)I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Lmb/c7;->t:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2}, Lmb/c7;->l(Lmb/c1;Z)V

    return-void
.end method

.method public static c(Lmb/c7;Lmb/y4;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2, p1}, Lmb/c7;->j(Ljava/lang/String;Lmb/c1;)I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Lmb/c7;->u:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2}, Lmb/c7;->l(Lmb/c1;Z)V

    return-void
.end method

.method public static d(Lmb/c7;Lmb/b4;)V
    .locals 5

    invoke-virtual {p0, p1}, Lmb/c7;->q(Lmb/y1;)V

    iget-object v0, p1, Lmb/b4;->n:[Lmb/s5;

    iget-object v1, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v1}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v1, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lmb/b4;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p1, Lmb/b4;->m:Lmb/s5;

    if-eqz v2, :cond_0

    const-string v3, " extends "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lmb/c7;->h:Lmb/b7;

    invoke-virtual {v2, v3}, Lmb/s5;->E(Lmb/u7;)Ljava/lang/Object;

    :cond_0
    array-length v2, v0

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " implements "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    array-length v4, v0

    invoke-static {v4, v3, v0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string v0, " {"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const v0, 0xfffd

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Lmb/c7;->p(Lmb/e0;)V

    const-string p0, "\ufffc}"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lmb/c7;Lmb/y2;)V
    .locals 5

    invoke-virtual {p0, p1}, Lmb/c7;->q(Lmb/y1;)V

    iget-object v0, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/y2;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/y2;->j:[Lmb/s5;

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " extends "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    array-length v4, v1

    invoke-static {v4, v3, v1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Lmb/c7;->y(Lmb/m0;)V

    iget-object p1, p1, Lmb/y2;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/u5;

    iget-object v4, p0, Lmb/c7;->e:Lmb/b7;

    invoke-interface {v3, v4}, Lmb/u5;->v(Lmb/s7;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_1
    const-string p0, "\ufffc}"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Lmb/c7;[Lmb/r0;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lmb/c7;->m:Lmb/b7;

    invoke-interface {v2, v3}, Lmb/r0;->s(Lmb/e7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g(Lmb/c7;[Lmb/y4;)V
    .locals 4

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    array-length v1, p1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const v2, 0xfffd

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    :cond_1
    :goto_1
    array-length v2, p1

    if-ge v3, v2, :cond_4

    if-lez v3, :cond_3

    if-eqz v1, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(C)V

    goto :goto_2

    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    :goto_2
    aget-object v2, p1, v3

    invoke-virtual {p0, v2}, Lmb/c7;->m(Lmb/c1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const p0, 0xfffc

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    :cond_5
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public static h(Lmb/c7;Lmb/f2;)V
    .locals 5

    invoke-virtual {p0, p1}, Lmb/c7;->q(Lmb/y1;)V

    move-object v0, p1

    check-cast v0, Lmb/m0;

    iget-object v0, v0, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enum "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lmb/b4;

    iget-object v2, v2, Lmb/b4;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lmb/f2;->p()[Lmb/s5;

    move-result-object v1

    array-length v2, v1

    const-string v3, ", "

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " implements "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-static {v4, v3, v1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {p1}, Lmb/f2;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lmb/c7;->d:Lmb/b7;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/e2;

    invoke-virtual {v2, v4}, Lmb/b7;->s0(Lmb/e2;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    check-cast p1, Lmb/e0;

    invoke-virtual {p0, p1}, Lmb/c7;->p(Lmb/e0;)V

    const-string p0, "\ufffc}"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Lmb/c7;Lmb/s0;)V
    .locals 3

    invoke-virtual {p0, p1}, Lmb/c7;->q(Lmb/y1;)V

    move-object v0, p1

    check-cast v0, Lmb/m0;

    iget-object v1, v0, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v1}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v1, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v2, "@interface "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    check-cast p1, Lmb/y2;

    iget-object p1, p1, Lmb/y2;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " {"

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const p1, 0xfffd

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Lmb/c7;->y(Lmb/m0;)V

    const-string p0, "\ufffc}"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/lang/String;Lmb/c1;)I
    .locals 2

    instance-of v0, p1, Lmb/d1;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    check-cast p1, Lmb/d1;

    iget-object p1, p1, Lmb/d1;->g:Ljava/lang/String;

    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_0
    instance-of v0, p1, Lmb/x5;

    const-string v1, "x"

    if-eqz v0, :cond_1

    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lmb/x5;

    iget-object p1, p1, Lmb/x5;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lmb/r1;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    const-string p1, "?:"

    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lmb/w2;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    const-string p1, "instanceof"

    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lmb/k1;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    const-string p1, "cast"

    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lmb/v3;

    if-nez v0, :cond_9

    instance-of v0, p1, Lmb/i2;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p1, Lmb/e4;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    const-string p1, "new"

    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lmb/w1;

    if-eqz v0, :cond_8

    check-cast p1, Lmb/w1;

    iget-object v0, p1, Lmb/w1;->g:Ljava/lang/String;

    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    iget-boolean p1, p1, Lmb/w1;->f:Z

    if-eqz p1, :cond_7

    invoke-static {v0, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0

    :cond_8
    const/4 p0, -0x1

    return p0

    :cond_9
    :goto_2
    invoke-static {p0}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p0

    const-string p1, "."

    invoke-static {p1}, Lmb/c7;->k(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0
.end method

.method public static k(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lmb/c7;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final l(Lmb/c1;Z)V
    .locals 2

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    if-nez p2, :cond_0

    const-string v1, "((( "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lmb/c7;->m(Lmb/c1;)V

    if-nez p2, :cond_1

    const-string p0, " )))"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final m(Lmb/c1;)V
    .locals 0

    iget-object p0, p0, Lmb/c7;->g:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    return-void
.end method

.method public final n(Lmb/e1;)V
    .locals 2

    iget-object p1, p1, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    const-string p0, "{}"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(C)V

    const v0, 0xfffd

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Lmb/c7;->v(Ljava/util/List;)V

    const-string p0, "\ufffc}"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lmb/f1;)V
    .locals 0

    iget-object p0, p0, Lmb/c7;->f:Lmb/b7;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    return-void
.end method

.method public final p(Lmb/e0;)V
    .locals 7

    iget-object v0, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lmb/s1;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lmb/c7;->e:Lmb/b7;

    invoke-virtual {v6, v5}, Lmb/b7;->A(Lmb/r2;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmb/c7;->y(Lmb/m0;)V

    iget-object p1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lmb/f1;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Lmb/c7;->f:Lmb/b7;

    invoke-interface {v1, v3}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final q(Lmb/y1;)V
    .locals 2

    invoke-interface {p1}, Lmb/y1;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "/**"

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " *"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lhb/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final r(Lmb/p2;Z)V
    .locals 1

    iget-object v0, p1, Lmb/p2;->c:[Lmb/x3;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v0, p1, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {p0, v0}, Lmb/c7;->w(Lmb/s5;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    if-eqz p2, :cond_0

    const-string p2, "..."

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " \uffff"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final s(Lmb/q2;)V
    .locals 8

    iget-object v0, p1, Lmb/q2;->c:[Lmb/p2;

    iget-object v1, p1, Lmb/q2;->c:[Lmb/p2;

    array-length v0, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/16 v2, 0x28

    iget-object v5, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(C)V

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    const v2, 0xfffd

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(C)V

    :cond_1
    move v2, v3

    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_5

    if-lez v2, :cond_3

    if-eqz v0, :cond_2

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(C)V

    goto :goto_2

    :cond_2
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    :goto_2
    aget-object v6, v1, v2

    array-length v7, v1

    sub-int/2addr v7, v4

    if-ne v2, v7, :cond_4

    iget-boolean v7, p1, Lmb/q2;->d:Z

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    invoke-virtual {p0, v6, v7}, Lmb/c7;->r(Lmb/p2;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    const p0, 0xfffc

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->print(C)V

    :cond_6
    const/16 p0, 0x29

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public final t(Lmb/r2;)V
    .locals 3

    iget-object v0, p1, Lmb/r2;->g:Lmb/q2;

    invoke-virtual {p0, v0}, Lmb/c7;->s(Lmb/q2;)V

    iget-object p1, p1, Lmb/r2;->h:[Lmb/s5;

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " throws "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    array-length v2, p1

    invoke-static {v2, v1, p1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final u([Lmb/x3;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lmb/c7;->n:Lmb/b7;

    invoke-interface {v2, v3}, Lmb/x3;->l(Lmb/o7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/f1;

    instance-of v3, v2, Lmb/e1;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lmb/f3;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lmb/i3;

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lmb/l5;

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :cond_3
    const/16 v3, 0x63

    :goto_1
    iget-object v4, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    if-eq v1, v0, :cond_4

    if-eq v1, v3, :cond_4

    const v1, 0xfffe

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(C)V

    :cond_4
    invoke-virtual {p0, v2}, Lmb/c7;->o(Lmb/f1;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    move v1, v3

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final w(Lmb/s5;)V
    .locals 0

    iget-object p0, p0, Lmb/c7;->h:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/s5;->E(Lmb/u7;)Ljava/lang/Object;

    return-void
.end method

.method public final x(Lmb/v5;)V
    .locals 0

    iget-object p0, p0, Lmb/c7;->d:Lmb/b7;

    invoke-interface {p1, p0}, Lmb/v5;->q(Lmb/t7;)Ljava/lang/Object;

    return-void
.end method

.method public final y(Lmb/m0;)V
    .locals 7

    iget-object v0, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lmb/c7;->e:Lmb/b7;

    iget-object v5, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lmb/u3;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v6}, Lmb/b7;->A(Lmb/r2;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    check-cast v0, Lmb/t3;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    invoke-interface {v0, v4}, Lmb/u5;->v(Lmb/s7;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final z(Lmb/z5;)V
    .locals 3

    iget-object v0, p1, Lmb/z5;->c:Ljava/lang/String;

    iget-object v1, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p1, Lmb/z5;->d:I

    if-ge v0, v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lmb/z5;->e:Lmb/x0;

    if-eqz p1, :cond_1

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/c7;->i:Lmb/b7;

    invoke-interface {p1, p0}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
