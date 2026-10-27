.class public final Lmb/a7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Ljava/util/logging/Logger;

.field public static final n:I

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Lk0/l;

.field public static final q:Lmb/q;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/HashMap;

.field public static final u:Ljava/util/HashMap;


# instance fields
.field public a:Ljava/util/EnumSet;

.field public b:I

.field public c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:Lmb/n;

.field public f:I

.field public final g:Lmb/k0;

.field public final h:Lmb/b;

.field public i:Lc5/o;

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 43

    const-class v0, Lmb/a7;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lmb/a7;->m:Ljava/util/logging/Logger;

    const-string v1, "defaultTargetVersion"

    invoke-static {v0, v1}, Ljb/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lmb/a7;->n:I

    const-string v0, "\\p{javaUpperCase}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmb/a7;->o:Ljava/util/regex/Pattern;

    new-instance v0, Lk0/l;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lk0/l;-><init>(I)V

    sput-object v0, Lmb/a7;->p:Lk0/l;

    sget-object v0, Lmb/x;->t:Lmb/q;

    sput-object v0, Lmb/a7;->q:Lmb/q;

    const-string v0, "2_*1_*4_*7_*4_*8_*3_*6_*4_*8"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmb/a7;->r:Ljava/util/regex/Pattern;

    const-string v0, "9_*2_*2_*3_*3_*7_*2_*0_*3_*6_*8_*5_*4_*7_*7_*5_*8_*0_*8[lL]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmb/a7;->s:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmb/a7;->t:Ljava/util/HashMap;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/16 v3, 0x85

    filled-new-array {v3}, [I

    move-result-object v7

    const/16 v3, 0x86

    filled-new-array {v3}, [I

    move-result-object v12

    const/16 v3, 0x89

    filled-new-array {v3}, [I

    move-result-object v17

    const/16 v3, 0x87

    filled-new-array {v3}, [I

    move-result-object v19

    const/16 v3, 0x8a

    filled-new-array {v3}, [I

    move-result-object v24

    const/16 v3, 0x8d

    filled-new-array {v3}, [I

    move-result-object v26

    const-string v27, "FD"

    const-string v3, "BS"

    const-string v4, "BI"

    const-string v5, "SI"

    const-string v6, "CI"

    const-string v8, "BJ"

    const-string v9, "SJ"

    const-string v10, "CJ"

    const-string v11, "IJ"

    const-string v13, "BF"

    const-string v14, "SF"

    const-string v15, "CF"

    const-string v16, "IF"

    const-string v18, "JF"

    const-string v20, "BD"

    const-string v21, "SD"

    const-string v22, "CD"

    const-string v23, "ID"

    const-string v25, "JD"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v1

    move-object v5, v3

    :goto_1
    const/16 v6, 0x1a

    if-ge v4, v6, :cond_2

    aget-object v6, v2, v4

    instance-of v7, v6, [I

    if-eqz v7, :cond_1

    move-object v5, v6

    check-cast v5, [I

    goto :goto_2

    :cond_1
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmb/a7;->u:Ljava/util/HashMap;

    new-array v4, v1, [I

    const/16 v2, 0x91

    filled-new-array {v2}, [I

    move-result-object v8

    const/16 v5, 0x93

    filled-new-array {v5}, [I

    move-result-object v12

    const/16 v6, 0x92

    filled-new-array {v6}, [I

    move-result-object v14

    const/16 v6, 0x88

    filled-new-array {v6, v2}, [I

    move-result-object v16

    filled-new-array {v6, v5}, [I

    move-result-object v18

    filled-new-array {v6}, [I

    move-result-object v21

    const/16 v6, 0x8b

    filled-new-array {v6, v2}, [I

    move-result-object v23

    filled-new-array {v6, v5}, [I

    move-result-object v25

    filled-new-array {v6}, [I

    move-result-object v28

    const/16 v6, 0x8c

    filled-new-array {v6}, [I

    move-result-object v30

    const/16 v6, 0x8e

    filled-new-array {v6, v2}, [I

    move-result-object v32

    filled-new-array {v6, v5}, [I

    move-result-object v34

    filled-new-array {v6}, [I

    move-result-object v37

    const/16 v2, 0x8f

    filled-new-array {v2}, [I

    move-result-object v39

    const/16 v2, 0x90

    filled-new-array {v2}, [I

    move-result-object v41

    const-string v42, "DF"

    const-string v5, "BC"

    const-string v6, "SC"

    const-string v7, "CS"

    const-string v9, "SB"

    const-string v10, "CB"

    const-string v11, "IB"

    const-string v13, "IS"

    const-string v15, "IC"

    const-string v17, "JB"

    const-string v19, "JS"

    const-string v20, "JC"

    const-string v22, "JI"

    const-string v24, "FB"

    const-string v26, "FS"

    const-string v27, "FC"

    const-string v29, "FI"

    const-string v31, "FJ"

    const-string v33, "DB"

    const-string v35, "DS"

    const-string v36, "DC"

    const-string v38, "DI"

    const-string v40, "DJ"

    filled-new-array/range {v4 .. v42}, [Ljava/lang/Object;

    move-result-object v2

    :goto_3
    const/16 v4, 0x27

    if-ge v1, v4, :cond_4

    aget-object v4, v2, v1

    instance-of v5, v4, [I

    if-eqz v5, :cond_3

    check-cast v4, [I

    move-object v3, v4

    goto :goto_4

    :cond_3
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public constructor <init>(Lmb/k0;Lmb/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lmb/c0;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lmb/a7;->a:Ljava/util/EnumSet;

    const/4 v0, -0x1

    iput v0, p0, Lmb/a7;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmb/a7;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lmb/a7;->g:Lmb/k0;

    iput-object p2, p0, Lmb/a7;->h:Lmb/b;

    return-void
.end method

.method public static C1(Lmb/u5;)Z
    .locals 2

    instance-of v0, p0, Lmb/k2;

    if-eqz v0, :cond_1

    check-cast p0, Lmb/k2;

    invoke-virtual {p0}, Lmb/k2;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmb/e5;->c:Lmb/a5;

    check-cast p0, Lmb/v5;

    instance-of p0, p0, Lmb/y2;

    if-eqz p0, :cond_4

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of v0, p0, Lmb/u3;

    if-eqz v0, :cond_2

    check-cast p0, Lmb/u3;

    invoke-virtual {p0}, Lmb/u3;->z()Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Lmb/u2;

    const-string v1, "static"

    if-eqz v0, :cond_3

    check-cast p0, Lmb/u2;

    iget-object p0, p0, Lmb/l0;->d:[Lmb/x3;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    instance-of v0, p0, Lmb/q3;

    if-eqz v0, :cond_4

    check-cast p0, Lmb/q3;

    iget-object p0, p0, Lmb/m0;->b:[Lmb/x3;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static E1(Lmb/x;Lmb/b0;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lmb/x;

    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lmb/a7;->t:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static F1(Lmb/b0;Lmb/b0;)Z
    .locals 3

    move-object v0, p0

    check-cast v0, Lmb/x;

    move-object v1, p1

    check-cast v1, Lmb/x;

    invoke-virtual {v1}, Lmb/x;->H()Z

    move-result v2

    if-nez v2, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lmb/x;->D(Lmb/x;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static K1(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5555

    if-ge v0, v1, :cond_0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ne v3, v0, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const v6, 0xfffc

    if-lt v4, v6, :cond_3

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v4, v3, 0x5555

    if-le v4, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    move v4, v2

    move v5, v3

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/16 v7, 0x7ff

    if-le v6, v7, :cond_5

    add-int/lit8 v4, v4, 0x3

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static L0(Lmb/x;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p0, p1}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->x()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2}, Lmb/a7;->L0(Lmb/x;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {p0}, Lmb/x;->t()[Lmb/x;

    move-result-object p0

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p0, v2

    invoke-static {v1, p1, p2}, Lmb/a7;->L0(Lmb/x;Ljava/lang/String;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static L1(Lmb/x0;)Z
    .locals 1

    sget-object v0, Lmb/a7;->p:Lk0/l;

    invoke-interface {p0, v0}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static Q0(Lmb/v5;)Lmb/m0;
    .locals 3

    instance-of v0, p0, Lmb/m4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Lmb/r3;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    instance-of v0, p0, Lmb/e3;

    const-string v2, "static"

    if-eqz v0, :cond_6

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->f:Lmb/a5;

    :goto_0
    instance-of v0, p0, Lmb/r2;

    if-nez v0, :cond_2

    instance-of v0, p0, Lmb/u2;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lmb/u3;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lmb/u3;

    invoke-virtual {v0}, Lmb/u3;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    instance-of v0, p0, Lmb/u2;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lmb/u2;

    iget-object v0, v0, Lmb/l0;->d:[Lmb/x3;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    instance-of v0, p0, Lmb/v5;

    if-nez v0, :cond_5

    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_1

    :cond_5
    check-cast p0, Lmb/v5;

    instance-of v0, p0, Lmb/e0;

    if-eqz v0, :cond_b

    check-cast p0, Lmb/m0;

    return-object p0

    :cond_6
    instance-of v0, p0, Lmb/q3;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lmb/q3;

    iget-object v0, v0, Lmb/m0;->b:[Lmb/x3;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    instance-of v0, p0, Lmb/u5;

    if-nez v0, :cond_a

    instance-of v0, p0, Lmb/t1;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    instance-of v0, p0, Lmb/q1;

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_2

    :cond_a
    move-object v0, p0

    check-cast v0, Lmb/u5;

    invoke-static {v0}, Lmb/a7;->C1(Lmb/u5;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_3
    return-object v1

    :cond_c
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    check-cast p0, Lmb/m0;

    return-object p0
.end method

.method public static S(Lmb/k3;Ljava/lang/String;)Lhb/a;
    .locals 1

    new-instance v0, Lhb/a;

    invoke-interface {p0}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a([Lmb/x0;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lmb/a7;->L1(Lmb/x0;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(Lmb/a7;Lmb/k2;)[Lmb/s;
    .locals 18

    move-object/from16 v0, p1

    iget-object v1, v0, Lmb/k2;->g:[Lmb/z5;

    iget-object v2, v0, Lmb/k2;->e:[Lmb/x3;

    array-length v1, v1

    new-array v3, v1, [Lmb/s;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v5, v0, Lmb/k2;->g:[Lmb/z5;

    aget-object v5, v5, v4

    iget-object v6, v0, Lmb/e5;->c:Lmb/a5;

    move-object v10, v6

    check-cast v10, Lmb/v5;

    invoke-static {v2}, La/a;->a([Lmb/x3;)[Lmb/r0;

    invoke-static {v2}, La/a;->b([Lmb/x3;)I

    move-result v11

    invoke-virtual {v0}, Lmb/k2;->x()Z

    move-result v12

    const-string v6, "final"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v16

    iget-object v13, v0, Lmb/k2;->f:Lmb/s5;

    iget v14, v5, Lmb/z5;->d:I

    iget-object v15, v5, Lmb/z5;->c:Ljava/lang/String;

    iget-object v5, v5, Lmb/z5;->e:Lmb/x0;

    new-instance v7, Lmb/u6;

    move-object/from16 v8, p0

    invoke-virtual {v8, v10}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v9

    move-object/from16 v17, v5

    invoke-direct/range {v7 .. v17}, Lmb/u6;-><init>(Lmb/a7;Lmb/x;Lmb/v5;IZLmb/s5;ILjava/lang/String;ZLmb/x0;)V

    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static varargs d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Lmb/x3;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lmb/n0;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lmb/n0;-><init>(Lhb/c;Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static h1(Lmb/b0;)I
    .locals 3

    sget-object v0, Lmb/x;->w:Lmb/w;

    if-eq p0, v0, :cond_4

    sget-object v0, Lmb/x;->x:Lmb/w;

    if-eq p0, v0, :cond_4

    sget-object v0, Lmb/x;->A:Lmb/w;

    if-eq p0, v0, :cond_4

    sget-object v0, Lmb/x;->C:Lmb/w;

    if-eq p0, v0, :cond_4

    sget-object v0, Lmb/x;->D:Lmb/w;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmb/x;->B:Lmb/w;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lmb/x;->z:Lmb/w;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    sget-object v0, Lmb/x;->y:Lmb/w;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    new-instance v0, Lhb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i1(Lmb/b0;)I
    .locals 1

    move-object v0, p0

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {p0}, Lmb/a7;->h1(Lmb/b0;)I

    move-result p0

    return p0
.end method

.method public static j1(Lmb/x;)I
    .locals 3

    sget-object v0, Lmb/x;->A:Lmb/w;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lmb/x;->B:Lmb/w;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lmb/x;->z:Lmb/w;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    sget-object v0, Lmb/x;->y:Lmb/w;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-virtual {p0}, Lmb/x;->H()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    sget-object v0, Lmb/x;->D:Lmb/w;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lmb/x;->w:Lmb/w;

    if-ne p0, v0, :cond_6

    :goto_0
    const/4 p0, 0x5

    return p0

    :cond_6
    sget-object v0, Lmb/x;->x:Lmb/w;

    if-ne p0, v0, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    sget-object v0, Lmb/x;->C:Lmb/w;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x7

    return p0

    :cond_8
    new-instance v0, Lhb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n2(Lhb/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v0, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v6, "btnfr\"\'\\"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_2

    const-string v1, "\u0008\t\n\u000c\r\"\'\\"

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v5

    goto :goto_0

    :cond_2
    const/16 v6, 0x8

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v7, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-eq v4, v2, :cond_4

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v4

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    const/16 v5, 0x1f

    if-gt v7, v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-eq v5, v2, :cond_3

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v5

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    :goto_1
    int-to-char v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    new-instance p1, Lhb/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence \"\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v0(Lmb/x;Ljava/lang/String;Lhb/c;)Lmb/s;
    .locals 4

    invoke-virtual {p0}, Lmb/x;->j()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/s;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->x()Lmb/x;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, p1, p2}, Lmb/a7;->v0(Lmb/x;Ljava/lang/String;Lhb/c;)Lmb/s;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lmb/x;->t()[Lmb/x;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    invoke-static {v3, p1, p2}, Lmb/a7;->v0(Lmb/x;Ljava/lang/String;Lhb/c;)Lmb/s;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    new-instance p0, Lhb/a;

    const-string v1, "Access to field \""

    const-string v2, "\" is ambiguous - both \""

    invoke-static {v1, p1, v2}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lmb/s;->a:Lmb/x;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" and \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lmb/s;->a:Lmb/x;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" declare it"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static x1(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 2

    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static z0(Lmb/a5;Ljava/lang/String;)Lmb/e3;
    .locals 6

    instance-of v0, p0, Lmb/q1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    instance-of v2, v0, Lmb/q1;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    instance-of v2, p0, Lmb/f1;

    if-eqz v2, :cond_6

    instance-of v2, v0, Lmb/e1;

    if-nez v2, :cond_2

    instance-of v2, v0, Lmb/r2;

    if-eqz v2, :cond_6

    :cond_2
    check-cast p0, Lmb/f1;

    instance-of v2, v0, Lmb/f1;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lmb/e1;

    iget-object v2, v2, Lmb/e1;->e:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    move-object v2, v0

    check-cast v2, Lmb/r2;

    iget-object v2, v2, Lmb/r2;->i:Ljava/util/List;

    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/f1;

    instance-of v4, v3, Lmb/f3;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lmb/f3;

    iget-object v4, v4, Lmb/f3;->e:Lmb/e3;

    iget-object v5, v4, Lmb/b4;->l:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v4

    :cond_5
    if-ne v3, p0, :cond_4

    :cond_6
    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final A(Lmb/x0;Lmb/b0;)V
    .locals 2

    new-instance v0, Lg5/m;

    const/16 v1, 0x12

    invoke-direct {v0, p0, p2, p1, v1}, Lg5/m;-><init>(Ljava/lang/Object;Lmb/b0;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    return-void
.end method

.method public final A0(Lmb/b0;Ljava/lang/String;Lhb/c;)Lmb/x;
    .locals 5

    check-cast p1, Lmb/x;

    invoke-virtual {p1, p2}, Lmb/x;->c(Ljava/lang/String;)[Lmb/x;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    aget-object p0, p1, v2

    return-object p0

    :cond_1
    const-string v0, "Type \""

    const-string v4, "\" is ambiguous: "

    invoke-static {v0, p2, v4}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object v0, p1, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_2

    const-string v0, " vs. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v3

    invoke-virtual {v0}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1
.end method

.method public final A1(Lmb/x;Lmb/x;Z)Z
    .locals 1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lmb/a7;->E1(Lmb/x;Lmb/b0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lmb/a7;->F1(Lmb/b0;Lmb/b0;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p0, p1}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_4

    if-ne v0, p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, p2}, Lmb/a7;->F1(Lmb/b0;Lmb/b0;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_6

    invoke-virtual {p0, p1}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object p0

    if-eqz p0, :cond_6

    if-ne p0, p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0, p2}, Lmb/a7;->E1(Lmb/x;Lmb/b0;)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final B(Lmb/r2;Lorg/codehaus/janino/util/t0;)V
    .locals 3

    const-string v0, "Compiling \""

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmb/a7;->G(Lmb/r2;Lorg/codehaus/janino/util/t0;)V
    :try_end_0
    .catch Lorg/codehaus/janino/util/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Lhb/b;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Lorg/codehaus/janino/util/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final B0(Lmb/k3;[Lmb/t;[Lmb/x;ZLmb/a5;)Lmb/t;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    sget-object v6, Lmb/a7;->m:Ljava/util/logging/Logger;

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v10, p1

    filled-new-array {v10, v5, v8, v9, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "findMostSpecificIInvocable"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_b

    aget-object v14, v1, v12

    invoke-virtual {v0, v14, v4}, Lmb/a7;->v1(Lmb/u;Lmb/a5;)Z

    move-result v15

    if-nez v15, :cond_1

    move/from16 v21, v9

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v14}, Lmb/t;->e()[Lmb/x;

    move-result-object v15

    array-length v7, v15

    array-length v11, v2

    invoke-virtual {v14}, Lmb/t;->j()Z

    move-result v17

    if-eqz v17, :cond_6

    add-int/lit8 v13, v7, -0x1

    aget-object v19, v15, v13

    invoke-virtual/range {v19 .. v19}, Lmb/x;->e()Lmb/x;

    move-result-object v1

    add-int/lit8 v4, v11, -0x1

    if-ne v13, v4, :cond_2

    aget-object v19, v2, v4

    invoke-virtual/range {v19 .. v19}, Lmb/x;->C()Z

    move-result v19

    if-eqz v19, :cond_2

    aget-object v19, v2, v4

    move/from16 v20, v4

    invoke-virtual/range {v19 .. v19}, Lmb/x;->e()Lmb/x;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v3}, Lmb/a7;->A1(Lmb/x;Lmb/x;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v11, v11, -0x1

    move/from16 v21, v9

    move v7, v13

    :goto_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_2
    move/from16 v20, v4

    :cond_3
    move/from16 v4, v20

    :goto_3
    if-lt v4, v13, :cond_5

    move/from16 v19, v4

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move/from16 v20, v7

    aget-object v7, v2, v19

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v7

    move/from16 v21, v9

    const-string v9, "{0} <=> {1}"

    invoke-virtual {v6, v4, v9, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v4, v2, v19

    invoke-virtual {v0, v4, v1, v3}, Lmb/a7;->A1(Lmb/x;Lmb/x;Z)Z

    move-result v4

    if-nez v4, :cond_4

    move/from16 v7, v20

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v4, v19, -0x1

    move/from16 v7, v20

    move/from16 v9, v21

    goto :goto_3

    :cond_5
    move/from16 v21, v9

    move v7, v13

    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    move/from16 v20, v7

    move/from16 v21, v9

    goto :goto_2

    :goto_4
    if-ne v7, v11, :cond_a

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v11, :cond_8

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v9, v15, v1

    move/from16 v18, v1

    aget-object v1, v2, v18

    filled-new-array {v7, v9, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "{0}: {1} <=> {2}"

    invoke-virtual {v6, v4, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v1, v2, v18

    aget-object v4, v15, v18

    invoke-virtual {v0, v1, v4, v3}, Lmb/a7;->A1(Lmb/x;Lmb/x;Z)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v18, 0x1

    goto :goto_5

    :cond_8
    const-string v1, "Applicable!"

    invoke-virtual {v6, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    if-eqz v17, :cond_9

    iput-boolean v13, v14, Lmb/t;->a:Z

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p2

    move-object/from16 v4, p5

    move/from16 v9, v21

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/t;

    return-object v0

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_d

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/t;

    return-object v0

    :cond_d
    move-object v5, v8

    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    :goto_7
    const/16 v16, 0x0

    goto/16 :goto_16

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_15

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lmb/t;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_10
    :goto_9
    if-ge v13, v9, :cond_12

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lmb/t;

    invoke-virtual {v8, v14}, Lmb/t;->i(Lmb/t;)Z

    move-result v15

    if-eqz v15, :cond_11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v14, v8}, Lmb/t;->i(Lmb/t;)Z

    move-result v14

    if-eqz v14, :cond_10

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v11, v9, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v12, v9, :cond_14

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_a
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "maximallySpecificIInvocables={0}"

    invoke-virtual {v6, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/t;

    return-object v0

    :cond_16
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, "\""

    if-le v6, v5, :cond_2c

    aget-object v5, p2, v4

    instance-of v5, v5, Lmb/v;

    if-eqz v5, :cond_2c

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmb/v;

    invoke-virtual {v6}, Lmb/t;->e()[Lmb/x;

    move-result-object v8

    const/4 v9, 0x0

    :cond_17
    iget-object v11, v6, Lmb/t;->e:Lmb/x;

    invoke-virtual {v6}, Lmb/v;->m()Z

    move-result v12

    if-nez v12, :cond_1f

    invoke-virtual {v11}, Lmb/x;->G()Z

    move-result v12

    if-nez v12, :cond_1f

    if-nez v9, :cond_18

    goto :goto_b

    :cond_18
    iget-object v12, v9, Lmb/t;->e:Lmb/x;

    if-ne v11, v12, :cond_1c

    invoke-virtual {v6}, Lmb/v;->l()Lmb/x;

    move-result-object v11

    invoke-virtual {v9}, Lmb/v;->l()Lmb/x;

    move-result-object v12

    if-eq v11, v12, :cond_1b

    invoke-virtual {v9}, Lmb/v;->l()Lmb/x;

    move-result-object v11

    invoke-virtual {v6}, Lmb/v;->l()Lmb/x;

    move-result-object v12

    invoke-virtual {v0, v11, v12, v3}, Lmb/a7;->A1(Lmb/x;Lmb/x;Z)Z

    move-result v11

    if-eqz v11, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v6}, Lmb/v;->l()Lmb/x;

    move-result-object v11

    invoke-virtual {v9}, Lmb/v;->l()Lmb/x;

    move-result-object v9

    invoke-virtual {v0, v11, v9, v3}, Lmb/a7;->A1(Lmb/x;Lmb/x;Z)Z

    move-result v9

    if-eqz v9, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance v0, Lhb/b;

    invoke-interface {v10}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v1

    const-string v2, "Incompatible return types"

    invoke-direct {v0, v1, v2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lhb/b;

    invoke-interface {v10}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Two non-abstract methods \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" have the same parameter types, declaring type and return type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v11, v12}, Lmb/x;->D(Lmb/x;)Z

    move-result v13

    if-eqz v13, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-virtual {v12, v11}, Lmb/x;->D(Lmb/x;)Z

    move-result v11

    if-eqz v11, :cond_1e

    :goto_b
    move-object v9, v6

    goto :goto_c

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ambiguous static method import: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" vs. \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2

    :cond_1f
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2a

    if-eqz v9, :cond_20

    return-object v9

    :cond_20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [[Lmb/x;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_d
    if-ge v6, v2, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmb/v;

    invoke-virtual {v7}, Lmb/t;->g()[Lmb/x;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_21
    move v5, v4

    :goto_e
    if-ge v5, v2, :cond_27

    aget-object v6, v3, v5

    array-length v7, v6

    move v8, v4

    :goto_f
    if-ge v8, v7, :cond_26

    aget-object v9, v6, v8

    move v10, v4

    :goto_10
    if-ge v10, v2, :cond_24

    if-ne v10, v5, :cond_22

    goto :goto_12

    :cond_22
    aget-object v11, v3, v10

    array-length v12, v11

    move v13, v4

    :goto_11
    if-ge v13, v12, :cond_25

    aget-object v14, v11, v13

    invoke-virtual {v14, v9}, Lmb/x;->D(Lmb/x;)Z

    move-result v14

    if-eqz v14, :cond_23

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_23
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_24
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/v;

    :cond_28
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/v;

    invoke-virtual {v2}, Lmb/v;->l()Lmb/x;

    move-result-object v4

    invoke-virtual {v3}, Lmb/v;->l()Lmb/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v4

    if-eqz v4, :cond_28

    move-object v2, v3

    goto :goto_13

    :cond_29
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lmb/x;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/x;

    new-instance v1, Lmb/h6;

    iget-object v3, v2, Lmb/t;->e:Lmb/x;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v0}, Lmb/h6;-><init>(Lmb/x;Lmb/v;[Lmb/x;)V

    return-object v1

    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmb/v;

    invoke-virtual {v6}, Lmb/t;->e()[Lmb/x;

    move-result-object v11

    move v12, v4

    :goto_14
    array-length v13, v11

    if-ge v12, v13, :cond_17

    aget-object v13, v11, v12

    aget-object v14, v8, v12

    if-eq v13, v14, :cond_2b

    goto :goto_15

    :cond_2b
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_2c
    :goto_15
    if-nez v3, :cond_2d

    goto/16 :goto_7

    :goto_16
    return-object v16

    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invocation of constructor/method with argument type(s) \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v4

    :goto_17
    array-length v6, v2

    if-ge v5, v6, :cond_2f

    if-lez v5, :cond_2e

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmb/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2f
    const-string v2, "\" is ambiguous: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v4

    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_31

    if-lez v11, :cond_30

    const-string v2, " vs. "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16
.end method

.method public final B1(Lmb/b0;Lmb/b0;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p2, Lmb/x;

    invoke-virtual {v0, p2}, Lmb/x;->D(Lmb/x;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Lmb/x;->G()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lmb/x;->F()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v0}, Lmb/x;->D(Lmb/x;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lmb/a7;->h:Lmb/b;

    iget-object v2, v1, Lmb/a0;->n:Lmb/x;

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Lmb/x;->C()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v1, v1, Lmb/a0;->n:Lmb/x;

    if-ne p1, v1, :cond_5

    invoke-virtual {p2}, Lmb/x;->G()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lmb/x;->G()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lmb/x;->F()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lmb/x;->G()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lmb/x;->F()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, p2}, Lmb/x;->D(Lmb/x;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lmb/x;->G()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lmb/x;->G()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2, v0}, Lmb/x;->D(Lmb/x;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lmb/x;->C()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lmb/x;->C()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lmb/x;->e()Lmb/x;

    move-result-object p1

    invoke-virtual {p2}, Lmb/x;->e()Lmb/x;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmb/a7;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, p2}, Lmb/a7;->B1(Lmb/b0;Lmb/b0;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_a
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lmb/y4;)V
    .locals 2

    new-instance v0, Lmb/t6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    return-void
.end method

.method public final C0(Lmb/k3;[Lmb/t;[Lmb/y4;Lmb/a5;)Lmb/t;
    .locals 8

    array-length v0, p3

    new-array v4, v0, [Lmb/x;

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {p0, v2}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v2

    check-cast v2, Lmb/x;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmb/a7;->B0(Lmb/k3;[Lmb/t;[Lmb/x;ZLmb/a5;)Lmb/t;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lmb/a7;->B0(Lmb/k3;[Lmb/t;[Lmb/x;ZLmb/a5;)Lmb/t;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No applicable constructor/method found for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-nez v0, :cond_3

    const-string p2, "zero actual parameters"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string p2, "actual parameters \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v4, v7

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move p2, p1

    :goto_1
    if-ge p2, v0, :cond_4

    const-string p3, ", "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, v4, p2

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p2, "; candidates are: \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v3, v7

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    array-length p3, v3

    if-ge p1, p3, :cond_5

    const-string p3, ", \""

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, v3, p1

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final D(Lmb/v5;)V
    .locals 2

    new-instance v0, Lmb/t6;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-interface {p1, v0}, Lmb/v5;->q(Lmb/t7;)Ljava/lang/Object;

    return-void
.end method

.method public final D0(Lhb/c;[Ljava/lang/String;)Lmb/x;
    .locals 3

    array-length v0, p2

    const-string v1, "."

    invoke-static {v0, v1, p2}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public final D1(Lmb/b0;)Lmb/w;
    .locals 1

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    iget-object v0, p0, Lmb/a0;->c:Lmb/x;

    if-ne p1, v0, :cond_0

    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :cond_0
    iget-object v0, p0, Lmb/a0;->d:Lmb/x;

    if-ne p1, v0, :cond_1

    sget-object p0, Lmb/x;->w:Lmb/w;

    return-object p0

    :cond_1
    iget-object v0, p0, Lmb/a0;->e:Lmb/x;

    if-ne p1, v0, :cond_2

    sget-object p0, Lmb/x;->x:Lmb/w;

    return-object p0

    :cond_2
    iget-object v0, p0, Lmb/a0;->q:Lmb/x;

    if-ne p1, v0, :cond_3

    sget-object p0, Lmb/x;->C:Lmb/w;

    return-object p0

    :cond_3
    iget-object v0, p0, Lmb/a0;->k:Lmb/x;

    if-ne p1, v0, :cond_4

    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0

    :cond_4
    iget-object v0, p0, Lmb/a0;->m:Lmb/x;

    if-ne p1, v0, :cond_5

    sget-object p0, Lmb/x;->B:Lmb/w;

    return-object p0

    :cond_5
    iget-object v0, p0, Lmb/a0;->j:Lmb/x;

    if-ne p1, v0, :cond_6

    sget-object p0, Lmb/x;->z:Lmb/w;

    return-object p0

    :cond_6
    iget-object p0, p0, Lmb/a0;->g:Lmb/x;

    if-ne p1, p0, :cond_7

    sget-object p0, Lmb/x;->y:Lmb/w;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final E(Lmb/f1;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lmb/t6;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-interface {p1, v0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    check-cast p1, Lmb/m3;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p1}, Lhb/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final E0(Lhb/c;Ljava/lang/String;)Lmb/x;
    .locals 8

    iget-object v0, p0, Lmb/a7;->g:Lmb/k0;

    instance-of v1, v0, Lmb/q1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v0, Lmb/q1;

    iget-object v1, v0, Lmb/q1;->c:Lmb/k4;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lmb/k4;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Lmb/q1;->i(Ljava/lang/String;)Lmb/p4;

    move-result-object v3

    if-nez v3, :cond_8

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "$"

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/q1;->i(Ljava/lang/String;)Lmb/p4;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lmb/m0;

    iget-object v0, v0, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_5
    if-ge v5, v4, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lmb/t3;

    invoke-interface {v6}, Lmb/c4;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v0, v6

    goto :goto_1

    :cond_6
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_7
    move-object v3, v0

    :cond_8
    invoke-virtual {p0, v3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_9

    return-object v2

    :cond_9
    :try_start_0
    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    invoke-static {p2}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/a0;->d(Ljava/lang/String;)Lmb/x;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lhb/a;

    if-eqz v1, :cond_a

    check-cast v0, Lhb/a;

    throw v0

    :cond_a
    new-instance v0, Lhb/a;

    invoke-direct {v0, p2, p1, p0}, Lhb/a;-><init>(Ljava/lang/String;Lhb/c;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final F(Lmb/e0;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v2

    instance-of v3, v1, Lmb/b4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lmb/b4;

    iget-object v3, v3, Lmb/m0;->b:[Lmb/x3;

    const-string v6, "abstract"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    iget-object v3, v2, Lmb/x;->d:[Lmb/v;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lmb/x;->s(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lmb/v;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmb/v;

    iput-object v3, v2, Lmb/x;->d:[Lmb/v;

    :goto_0
    array-length v6, v3

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v3, v7

    invoke-virtual {v8}, Lmb/v;->m()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "<clinit>"

    invoke-virtual {v8}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lmb/t;->e()[Lmb/x;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lmb/x;->a(Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lmb/v;->m()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8}, Lmb/v;->l()Lmb/x;

    move-result-object v10

    invoke-virtual {v9}, Lmb/v;->l()Lmb/x;

    move-result-object v9

    invoke-virtual {v10, v9}, Lmb/x;->D(Lmb/x;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Non-abstract class \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" must implement method \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v0, v1, v2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lmb/m0;->b:[Lmb/x3;

    iget-object v6, v1, Lmb/e0;->j:Ljava/util/ArrayList;

    iget-object v7, v1, Lmb/m0;->a:Lhb/c;

    iget-object v8, v1, Lmb/e0;->k:Ljava/util/TreeMap;

    invoke-virtual {v0, v3}, Lmb/a7;->c([Lmb/x3;)S

    move-result v3

    instance-of v9, v1, Lmb/p4;

    if-eqz v9, :cond_6

    or-int/lit8 v3, v3, 0x20

    int-to-short v3, v3

    :cond_6
    instance-of v9, v1, Lmb/f2;

    if-eqz v9, :cond_7

    or-int/lit16 v3, v3, 0x4000

    int-to-short v3, v3

    :cond_7
    invoke-virtual {v2}, Lmb/x;->x()Lmb/x;

    move-result-object v10

    invoke-virtual {v2}, Lmb/x;->t()[Lmb/x;

    move-result-object v11

    invoke-virtual {v0, v3, v2, v10, v11}, Lmb/a7;->Q1(SLmb/x;Lmb/x;[Lmb/x;)Lorg/codehaus/janino/util/t0;

    move-result-object v10

    iget-object v11, v10, Lorg/codehaus/janino/util/t0;->j:Ljava/util/ArrayList;

    iget-object v12, v10, Lorg/codehaus/janino/util/t0;->i:Ljava/util/ArrayList;

    iget-object v13, v1, Lmb/m0;->b:[Lmb/x3;

    invoke-static {v13}, La/a;->a([Lmb/x3;)[Lmb/r0;

    move-result-object v13

    invoke-virtual {v0, v13, v10, v10}, Lmb/a7;->J([Lmb/r0;Lorg/codehaus/janino/util/c;Lorg/codehaus/janino/util/t0;)V

    iget-object v13, v1, Lmb/m0;->f:Lmb/a5;

    instance-of v14, v13, Lmb/e1;

    if-eqz v14, :cond_9

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v13

    instance-of v14, v0, Lmb/c4;

    if-eqz v14, :cond_8

    move-object v14, v0

    check-cast v14, Lmb/c4;

    invoke-interface {v14}, Lmb/c4;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v14

    goto :goto_3

    :cond_8
    move v14, v5

    :goto_3
    new-instance v15, Lorg/codehaus/janino/util/e0;

    invoke-direct {v15, v13, v5, v14, v3}, Lorg/codehaus/janino/util/e0;-><init>(SSSS)V

    invoke-virtual {v10, v15}, Lorg/codehaus/janino/util/t0;->g(Lorg/codehaus/janino/util/e0;)V

    goto :goto_4

    :cond_9
    instance-of v13, v13, Lmb/v5;

    if-eqz v13, :cond_a

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v13

    iget-object v14, v1, Lmb/m0;->f:Lmb/a5;

    check-cast v14, Lmb/v5;

    invoke-virtual {v0, v14}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v14

    invoke-virtual {v14}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v14

    move-object v15, v1

    check-cast v15, Lmb/t3;

    invoke-interface {v15}, Lmb/c4;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v15

    new-instance v4, Lorg/codehaus/janino/util/e0;

    invoke-direct {v4, v13, v14, v15, v3}, Lorg/codehaus/janino/util/e0;-><init>(SSSS)V

    invoke-virtual {v10, v4}, Lorg/codehaus/janino/util/t0;->g(Lorg/codehaus/janino/util/e0;)V

    :cond_a
    :goto_4
    iget-boolean v3, v0, Lmb/a7;->j:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_d

    iget-object v3, v7, Lhb/c;->l:Ljava/lang/String;

    if-eqz v3, :cond_b

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    instance-of v3, v1, Lmb/c4;

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    check-cast v13, Lmb/c4;

    invoke-interface {v13}, Lmb/c4;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".java"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    const-string v3, "ANONYMOUS.java"

    :goto_5
    new-instance v13, Lorg/codehaus/janino/util/y;

    const-string v14, "SourceFile"

    invoke-virtual {v10, v14}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v14

    invoke-virtual {v10, v3}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v3

    invoke-direct {v13, v14, v3, v4}, Lorg/codehaus/janino/util/y;-><init>(SSI)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    instance-of v3, v1, Lmb/y1;

    if-eqz v3, :cond_e

    move-object v3, v1

    check-cast v3, Lmb/y1;

    invoke-interface {v3}, Lmb/y1;->t()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Lorg/codehaus/janino/util/a0;

    const-string v13, "Deprecated"

    invoke-virtual {v10, v13}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v13

    invoke-direct {v3, v13}, Lorg/codehaus/janino/util/h;-><init>(S)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "ENUM$VALUES"

    const-string v13, "public"

    const-string v14, "static"

    if-eqz v9, :cond_11

    move-object v15, v1

    check-cast v15, Lmb/f2;

    invoke-interface {v15}, Lmb/f2;->e()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v18, v8

    move/from16 v19, v9

    const/4 v8, 0x0

    :goto_6
    const-string v9, "final"

    if-ge v8, v5, :cond_10

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    check-cast v4, Lmb/e2;

    move/from16 v20, v5

    new-instance v5, Lmb/z5;

    move/from16 v22, v8

    iget-object v8, v4, Lmb/m0;->a:Lhb/c;

    move-object/from16 v23, v7

    iget-object v7, v4, Lmb/e2;->l:Ljava/lang/String;

    move-object/from16 v24, v12

    new-instance v12, Lmb/f4;

    iget-object v1, v4, Lmb/e2;->m:[Lmb/y4;

    move-object/from16 v25, v6

    if-eqz v1, :cond_f

    move-object v6, v1

    const/4 v1, 0x0

    :goto_7
    move-object/from16 v26, v11

    const/4 v11, 0x0

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    new-array v6, v1, [Lmb/y4;

    goto :goto_7

    :goto_8
    invoke-direct {v12, v8, v11, v2, v6}, Lmb/f4;-><init>(Lhb/c;Lmb/y4;Lmb/b0;[Lmb/y4;)V

    invoke-direct {v5, v8, v7, v1, v12}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    new-instance v1, Lmb/k2;

    iget-object v4, v4, Lmb/m0;->a:Lhb/c;

    filled-new-array {v13, v14, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lmb/a7;->d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;

    move-result-object v6

    new-instance v7, Lmb/c5;

    invoke-direct {v7, v8, v2}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    filled-new-array {v5}, [Lmb/z5;

    move-result-object v5

    invoke-direct {v1, v4, v6, v7, v5}, Lmb/k2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    invoke-virtual {v1, v15}, Lmb/k2;->a(Lmb/a5;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1, v10}, Lmb/a7;->e(Lmb/k2;Lorg/codehaus/janino/util/t0;)V

    move-object/from16 v1, p1

    move/from16 v5, v20

    move-object/from16 v4, v21

    move/from16 v8, v22

    move-object/from16 v7, v23

    move-object/from16 v12, v24

    move-object/from16 v6, v25

    move-object/from16 v11, v26

    goto :goto_6

    :cond_10
    move-object/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v11

    move-object/from16 v24, v12

    move-object v1, v15

    check-cast v1, Lmb/m0;

    iget-object v1, v1, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v0, v15}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v4

    new-instance v5, Lmb/k2;

    const-string v6, "private"

    filled-new-array {v6, v14, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmb/a7;->d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;

    move-result-object v6

    new-instance v7, Lmb/c5;

    invoke-direct {v7, v1, v4}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-instance v8, Lmb/z5;

    new-instance v9, Lmb/e4;

    new-instance v11, Lmb/c5;

    invoke-direct {v11, v1, v4}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-instance v4, Lmb/x2;

    invoke-interface {v15}, Lmb/f2;->e()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v1, v12}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    move-object/from16 v16, v4

    const/4 v12, 0x1

    new-array v4, v12, [Lmb/y4;

    const/4 v12, 0x0

    aput-object v16, v4, v12

    invoke-direct {v9, v1, v11, v4, v12}, Lmb/e4;-><init>(Lhb/c;Lmb/s5;[Lmb/y4;I)V

    move-object/from16 v4, v26

    const/4 v12, 0x1

    invoke-direct {v8, v1, v4, v12, v9}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    filled-new-array {v8}, [Lmb/z5;

    move-result-object v8

    invoke-direct {v5, v1, v6, v7, v8}, Lmb/k2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    check-cast v15, Lmb/e0;

    invoke-virtual {v15, v5}, Lmb/e0;->y(Lmb/l2;)V

    goto :goto_9

    :cond_11
    move-object/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object v4, v11

    move-object/from16 v24, v12

    :goto_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_15

    move-object/from16 v6, v25

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lmb/f1;

    instance-of v8, v7, Lmb/k2;

    if-eqz v8, :cond_12

    move-object v8, v7

    check-cast v8, Lmb/k2;

    invoke-virtual {v8}, Lmb/k2;->x()Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    instance-of v8, v7, Lmb/u2;

    if-eqz v8, :cond_14

    move-object v8, v7

    check-cast v8, Lmb/u2;

    iget-object v8, v8, Lmb/l0;->d:[Lmb/x3;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_13
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v25, v6

    goto :goto_a

    :cond_15
    move-object/from16 v6, v25

    if-eqz v19, :cond_16

    move-object/from16 v1, p1

    check-cast v1, Lmb/f2;

    invoke-virtual {v0, v1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v5

    invoke-interface {v1}, Lmb/f2;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v7, :cond_16

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lmb/e2;

    new-instance v12, Lmb/h2;

    new-instance v15, Lmb/b1;

    move-object/from16 v20, v1

    iget-object v1, v11, Lmb/m0;->a:Lhb/c;

    move-object/from16 v25, v6

    new-instance v6, Lmb/u0;

    move/from16 v21, v7

    new-instance v7, Lmb/j2;

    move/from16 v22, v8

    new-instance v8, Lmb/c5;

    invoke-direct {v8, v1, v5}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v7, v1, v8, v4}, Lmb/j2;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V

    new-instance v8, Lmb/x2;

    add-int/lit8 v26, v22, 0x1

    move/from16 v27, v9

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    invoke-direct {v6, v1, v7, v8}, Lmb/u0;-><init>(Lhb/c;Lmb/y4;Lmb/y4;)V

    new-instance v7, Lmb/j2;

    new-instance v8, Lmb/c5;

    invoke-direct {v8, v1, v5}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    iget-object v9, v11, Lmb/e2;->l:Ljava/lang/String;

    invoke-direct {v7, v1, v8, v9}, Lmb/j2;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V

    const-string v8, "="

    invoke-direct {v15, v1, v6, v8, v7}, Lmb/b1;-><init>(Lhb/c;Lmb/n3;Ljava/lang/String;Lmb/y4;)V

    invoke-direct {v12, v15}, Lmb/h2;-><init>(Lmb/y4;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    move/from16 v7, v21

    move-object/from16 v6, v25

    move/from16 v8, v26

    move/from16 v9, v27

    goto :goto_b

    :cond_16
    move-object/from16 v25, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v3}, Lmb/a7;->M1(Lmb/m0;Lorg/codehaus/janino/util/t0;Ljava/util/ArrayList;)V

    if-eqz v19, :cond_17

    move-object v3, v1

    check-cast v3, Lmb/f2;

    move-object v5, v3

    check-cast v5, Lmb/m0;

    iget-object v5, v5, Lmb/m0;->a:Lhb/c;

    invoke-interface {v3}, Lmb/f2;->e()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v7

    new-instance v8, Lmb/z5;

    new-instance v9, Lmb/e4;

    new-instance v11, Lmb/c5;

    invoke-direct {v11, v5, v7}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-instance v12, Lmb/x2;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v5, v15}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    move/from16 v19, v6

    const/4 v15, 0x1

    new-array v6, v15, [Lmb/y4;

    const/4 v15, 0x0

    aput-object v12, v6, v15

    invoke-direct {v9, v5, v11, v6, v15}, Lmb/e4;-><init>(Lhb/c;Lmb/s5;[Lmb/y4;I)V

    const-string v6, "tmp"

    invoke-direct {v8, v5, v6, v15, v9}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    new-instance v6, Lmb/i3;

    new-array v9, v15, [Lmb/x3;

    new-instance v11, Lmb/c5;

    iget-object v12, v0, Lmb/a7;->h:Lmb/b;

    invoke-virtual {v12, v7}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object v15

    invoke-direct {v11, v5, v15}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    filled-new-array {v8}, [Lmb/z5;

    move-result-object v15

    invoke-direct {v6, v5, v9, v11, v15}, Lmb/i3;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    new-instance v26, Lmb/u3;

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lmb/a7;->d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;

    move-result-object v28

    new-instance v9, Lmb/z0;

    new-instance v11, Lmb/c5;

    invoke-direct {v11, v5, v7}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v9, v11}, Lmb/z0;-><init>(Lmb/s5;)V

    new-instance v11, Lmb/q2;

    invoke-direct {v11, v5}, Lmb/q2;-><init>(Lhb/c;)V

    move-object/from16 v30, v9

    const/4 v15, 0x0

    new-array v9, v15, [Lmb/s5;

    new-instance v15, Lmb/h2;

    move-object/from16 v33, v9

    new-instance v9, Lmb/v3;

    move-object/from16 v32, v11

    new-instance v11, Lmb/c5;

    move-object/from16 v20, v2

    iget-object v2, v12, Lmb/a0;->t:Lmb/x;

    invoke-direct {v11, v5, v2}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-instance v2, Lmb/j2;

    new-instance v1, Lmb/c5;

    invoke-direct {v1, v5, v7}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v2, v5, v1, v4}, Lmb/j2;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V

    new-instance v1, Lmb/x2;

    const-string v4, "0"

    invoke-direct {v1, v5, v4}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    move-object/from16 v21, v1

    new-instance v1, Lmb/h3;

    move-object/from16 v22, v2

    invoke-virtual {v0, v6, v8}, Lmb/a7;->O0(Lmb/i3;Lmb/z5;)Lmb/g3;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    new-instance v2, Lmb/x2;

    invoke-direct {v2, v5, v4}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    new-instance v4, Lmb/x2;

    move-object/from16 v27, v1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Lmb/y4;

    const/16 v17, 0x0

    aput-object v22, v1, v17

    const/16 v16, 0x1

    aput-object v21, v1, v16

    move-object/from16 v19, v2

    const/4 v2, 0x2

    aput-object v27, v1, v2

    move/from16 v21, v2

    const/4 v2, 0x3

    aput-object v19, v1, v2

    const/16 v19, 0x4

    aput-object v4, v1, v19

    const-string v4, "arraycopy"

    invoke-direct {v9, v5, v11, v4, v1}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    invoke-direct {v15, v9}, Lmb/h2;-><init>(Lmb/y4;)V

    new-instance v1, Lmb/w4;

    new-instance v4, Lmb/h3;

    invoke-virtual {v0, v6, v8}, Lmb/a7;->O0(Lmb/i3;Lmb/z5;)Lmb/g3;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    invoke-direct {v1, v5, v4}, Lmb/w4;-><init>(Lhb/c;Lmb/y4;)V

    new-array v2, v2, [Lmb/e5;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    const/16 v16, 0x1

    aput-object v15, v2, v16

    aput-object v1, v2, v21

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    const/16 v29, 0x0

    const-string v31, "values"

    const/16 v34, 0x0

    move-object/from16 v27, v5

    invoke-direct/range {v26 .. v35}, Lmb/u3;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v3}, Lmb/u3;->c(Lmb/v5;)V

    invoke-virtual {v0, v2, v10}, Lmb/a7;->B(Lmb/r2;Lorg/codehaus/janino/util/t0;)V

    new-instance v2, Lmb/p2;

    new-array v5, v4, [Lmb/x3;

    new-instance v4, Lmb/c5;

    iget-object v6, v12, Lmb/a0;->r:Lmb/x;

    invoke-direct {v4, v1, v6}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    const-string v6, "s"

    invoke-direct {v2, v1, v5, v4, v6}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    new-instance v26, Lmb/u3;

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmb/a7;->d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;

    move-result-object v28

    new-instance v4, Lmb/c5;

    invoke-direct {v4, v1, v7}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-instance v5, Lmb/q2;

    filled-new-array {v2}, [Lmb/p2;

    move-result-object v6

    const/4 v15, 0x0

    invoke-direct {v5, v1, v6, v15}, Lmb/q2;-><init>(Lhb/c;[Lmb/p2;Z)V

    new-array v6, v15, [Lmb/s5;

    new-instance v8, Lmb/w4;

    new-instance v9, Lmb/k1;

    new-instance v11, Lmb/c5;

    invoke-direct {v11, v1, v7}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-instance v13, Lmb/v3;

    new-instance v14, Lmb/c5;

    iget-object v12, v12, Lmb/a0;->h:Lmb/x;

    invoke-direct {v14, v1, v12}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-instance v12, Lmb/p1;

    new-instance v15, Lmb/c5;

    invoke-direct {v15, v1, v7}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v12, v1, v15}, Lmb/p1;-><init>(Lhb/c;Lmb/s5;)V

    new-instance v7, Lmb/r4;

    invoke-direct {v7, v1, v2}, Lmb/r4;-><init>(Lhb/c;Lmb/p2;)V

    move/from16 v2, v21

    new-array v2, v2, [Lmb/y4;

    const/16 v17, 0x0

    aput-object v12, v2, v17

    const/16 v16, 0x1

    aput-object v7, v2, v16

    const-string v7, "valueOf"

    invoke-direct {v13, v1, v14, v7, v2}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    invoke-direct {v9, v1, v13, v11}, Lmb/k1;-><init>(Lhb/c;Lmb/y4;Lmb/s5;)V

    invoke-direct {v8, v1, v9}, Lmb/w4;-><init>(Lhb/c;Lmb/y4;)V

    filled-new-array {v8}, [Lmb/w4;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    const-string v31, "valueOf"

    move-object/from16 v30, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    invoke-direct/range {v26 .. v35}, Lmb/u3;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V

    move-object/from16 v1, v26

    invoke-virtual {v1, v3}, Lmb/u3;->a(Lmb/a5;)V

    invoke-virtual {v0, v1, v10}, Lmb/a7;->B(Lmb/r2;Lorg/codehaus/janino/util/t0;)V

    :goto_c
    move-object/from16 v1, p1

    const/4 v15, 0x0

    goto :goto_d

    :cond_17
    move-object/from16 v20, v2

    goto :goto_c

    :goto_d
    invoke-virtual {v0, v1, v10, v15}, Lmb/a7;->P(Lmb/m0;Lorg/codehaus/janino/util/t0;I)V

    iget-object v2, v1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Lmb/e0;->A()[Lmb/s1;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v6, v3

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v6, :cond_18

    aget-object v8, v3, v7

    invoke-virtual {v0, v8, v10}, Lmb/a7;->B(Lmb/r2;Lorg/codehaus/janino/util/t0;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_18
    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeMap;->size()I

    move-result v6

    if-eq v4, v6, :cond_1a

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeMap;->size()I

    :goto_f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_19

    move-object/from16 v4, v24

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    :cond_19
    array-length v4, v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1a

    aget-object v6, v3, v5

    const/4 v11, 0x0

    iput-object v11, v6, Lmb/s1;->k:Lmb/f6;

    invoke-virtual {v0, v6, v10}, Lmb/a7;->B(Lmb/r2;Lorg/codehaus/janino/util/t0;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    invoke-virtual {v0, v1, v10}, Lmb/a7;->O(Lmb/m0;Lorg/codehaus/janino/util/t0;)V

    invoke-virtual {v0, v1, v10, v2}, Lmb/a7;->P(Lmb/m0;Lorg/codehaus/janino/util/t0;I)V

    move-object/from16 v1, v20

    iget-object v2, v1, Lmb/x;->d:[Lmb/v;

    if-eqz v2, :cond_1b

    goto :goto_11

    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lmb/x;->s(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmb/v;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmb/v;

    iput-object v2, v1, Lmb/x;->d:[Lmb/v;

    :goto_11
    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lmb/v;->n()Z

    move-result v6

    if-nez v6, :cond_1d

    invoke-interface {v5}, Lmb/u;->b()I

    move-result v6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_1c

    invoke-virtual {v5}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lmb/t;->e()[Lmb/x;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lmb/x;->a(Ljava/lang/String;[Lmb/x;)Lmb/v;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-virtual {v5}, Lmb/v;->l()Lmb/x;

    move-result-object v7

    invoke-virtual {v6}, Lmb/v;->l()Lmb/x;

    move-result-object v8

    if-eq v7, v8, :cond_1c

    :try_start_0
    invoke-virtual {v0, v10, v1, v5, v6}, Lmb/a7;->F0(Lorg/codehaus/janino/util/t0;Lmb/x;Lmb/v;Lmb/v;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1c
    move-object/from16 v5, v23

    goto :goto_13

    :catch_0
    move-exception v0

    new-instance v1, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generating bridge method from \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v23

    invoke-direct {v1, v5, v2, v0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1d
    move-object/from16 v5, v23

    const/4 v12, 0x1

    :goto_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v23, v5

    goto :goto_12

    :cond_1e
    const-class v1, Lmb/k2;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v1}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v1

    :goto_14
    invoke-virtual {v1}, Lkb/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/k2;

    invoke-virtual {v0, v2, v10}, Lmb/a7;->e(Lmb/k2;Lorg/codehaus/janino/util/t0;)V

    goto :goto_14

    :cond_1f
    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/s;

    invoke-virtual {v2}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lmb/s;->e()Lmb/x;

    move-result-object v2

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v3, v2, v11}, Lorg/codehaus/janino/util/t0;->f(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/codehaus/janino/util/d0;

    goto :goto_15

    :cond_20
    :try_start_1
    iget-object v0, v0, Lmb/a7;->i:Lc5/o;

    invoke-virtual {v0, v10}, Lc5/o;->i(Lorg/codehaus/janino/util/t0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lhb/b;

    invoke-virtual {v10}, Lorg/codehaus/janino/util/t0;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final F0(Lorg/codehaus/janino/util/t0;Lmb/x;Lmb/v;Lmb/v;)V
    .locals 11

    invoke-virtual {p3}, Lmb/v;->l()Lmb/x;

    move-result-object v0

    invoke-virtual {p4}, Lmb/v;->l()Lmb/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/x;->D(Lmb/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lmb/v;->l()Lmb/x;

    move-result-object v0

    sget-object v2, Lmb/x;->v:Lmb/w;

    if-eq v0, v2, :cond_4

    invoke-virtual {p3}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lmb/t;->c()Lmb/c6;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {p1, v3, v0, v2}, Lorg/codehaus/janino/util/t0;->h(SLjava/lang/String;Lmb/c6;)Lorg/codehaus/janino/util/i0;

    move-result-object v0

    invoke-virtual {p3}, Lmb/t;->g()[Lmb/x;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    const-string v3, "Exceptions"

    invoke-virtual {p1, v3}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v3

    array-length v5, v2

    new-array v5, v5, [S

    move v6, v4

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_0

    aget-object v7, v2, v6

    invoke-virtual {v7}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v7

    aput-short v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/codehaus/janino/util/s0;

    const/4 v2, 0x2

    invoke-direct {p1, v3, v5, v2}, Lorg/codehaus/janino/util/s0;-><init>(SLjava/lang/Object;I)V

    invoke-virtual {v0, p1}, Lorg/codehaus/janino/util/i0;->b(Lorg/codehaus/janino/util/h;)V

    :cond_1
    new-instance p1, Lmb/n;

    iget-object v2, v0, Lorg/codehaus/janino/util/i0;->e:Lorg/codehaus/janino/util/t0;

    invoke-direct {p1, v2}, Lmb/n;-><init>(Lorg/codehaus/janino/util/t0;)V

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    iput-object p1, p0, Lmb/a7;->e:Lmb/n;

    :try_start_0
    invoke-virtual {p1}, Lmb/n;->q()V

    iget-object v3, p4, Lmb/t;->e:Lmb/x;

    const-string v5, "this"

    invoke-virtual {p0, v3, v5}, Lmb/a7;->i(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    invoke-virtual {p4}, Lmb/t;->e()[Lmb/x;

    move-result-object v3

    array-length v5, v3

    new-array v6, v5, [Lmb/j3;

    move v7, v4

    :goto_1
    array-length v8, v3

    if-ge v7, v8, :cond_2

    aget-object v8, v3, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lmb/a7;->i(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    sget-object v3, Lmb/m3;->b:Lmb/l3;

    invoke-virtual {p0, v3, p2, v4}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    move p2, v4

    :goto_2
    if-ge p2, v5, :cond_3

    aget-object v3, v6, p2

    sget-object v7, Lmb/m3;->b:Lmb/l3;

    iget-object v8, v3, Lmb/j3;->c:Lmb/b0;

    iget-short v3, v3, Lmb/j3;->a:S

    invoke-virtual {p0, v7, v8, v3}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    sget-object p2, Lmb/m3;->b:Lmb/l3;

    invoke-virtual {p0, p2, p4}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    invoke-virtual {p3}, Lmb/v;->l()Lmb/x;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmb/a7;->f(Lmb/k3;)V

    invoke-static {p3}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p2

    add-int/lit16 p2, p2, 0xac

    invoke-virtual {p0, p2}, Lmb/a7;->q2(I)V

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    iget-object p2, p2, Lmb/n;->g:Lmb/h;

    iput-object v1, p2, Lmb/k;->d:Lmb/p6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p4}, Lmb/t;->e()[Lmb/x;

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0, v4, v4}, Lmb/n;->e(IZZ)Lorg/codehaus/janino/util/l;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codehaus/janino/util/i0;->b(Lorg/codehaus/janino/util/h;)V

    return-void

    :goto_3
    iput-object v2, p0, Lmb/a7;->e:Lmb/n;

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The return type of \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" is incompatible with that of \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1
.end method

.method public final G(Lmb/r2;Lorg/codehaus/janino/util/t0;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Lmb/a7;->V0()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    instance-of v3, v0, Lmb/u3;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lmb/u3;

    invoke-virtual {v3}, Lmb/u3;->y()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Default interface methods only available for target version 8+. Either use \"setTargetVersion(8)\", or \"-DdefaultTargetVersion=8\"."

    iget-object v0, v0, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v1, v0, v2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    iget-object v3, v0, Lmb/l0;->d:[Lmb/x3;

    iget-object v6, v0, Lmb/r2;->h:[Lmb/s5;

    iget-object v7, v0, Lmb/r2;->i:Ljava/util/List;

    iget-object v8, v0, Lmb/r2;->g:Lmb/q2;

    iget-object v9, v0, Lmb/r2;->f:Ljava/lang/String;

    iget-object v10, v0, Lmb/m3;->a:Lhb/c;

    invoke-static {v3}, La/a;->b([Lmb/x3;)I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v11, v12, :cond_5

    instance-of v11, v0, Lmb/u3;

    if-eqz v11, :cond_2

    move-object v11, v0

    check-cast v11, Lmb/u3;

    invoke-virtual {v11}, Lmb/u3;->z()Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v14, v14, Lmb/y2;

    if-nez v14, :cond_2

    invoke-virtual {v1, v3}, Lmb/a7;->c([Lmb/x3;)S

    move-result v14

    and-int/lit8 v14, v14, -0x8

    int-to-short v14, v14

    or-int/2addr v5, v14

    int-to-short v5, v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x24

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v11}, Lmb/a7;->e2(Lmb/u3;)Lmb/v;

    move-result-object v11

    invoke-virtual {v11}, Lmb/t;->c()Lmb/c6;

    move-result-object v11

    iget-object v14, v0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {v1, v14}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v14

    invoke-virtual {v14}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v11, Lmb/c6;->a:[Ljava/lang/String;

    move-object/from16 v16, v4

    array-length v4, v15

    add-int/2addr v4, v12

    new-array v4, v4, [Ljava/lang/String;

    aput-object v14, v4, v13

    array-length v14, v15

    invoke-static {v15, v13, v4, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v14, Lmb/c6;

    iget-object v11, v11, Lmb/c6;->b:Ljava/lang/String;

    invoke-direct {v14, v11, v4}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v5, v9, v14}, Lorg/codehaus/janino/util/t0;->h(SLjava/lang/String;Lmb/c6;)Lorg/codehaus/janino/util/i0;

    move-result-object v4

    goto/16 :goto_2

    :cond_2
    move-object/from16 v16, v4

    invoke-virtual {v1, v3}, Lmb/a7;->c([Lmb/x3;)S

    move-result v4

    iget-object v5, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v5, v5, Lmb/y2;

    if-nez v5, :cond_3

    and-int/lit8 v4, v4, -0x8

    int-to-short v4, v4

    :cond_3
    iget-boolean v5, v8, Lmb/q2;->d:Z

    if-eqz v5, :cond_4

    or-int/lit16 v4, v4, 0x80

    int-to-short v4, v4

    :cond_4
    new-instance v5, Lg5/c;

    invoke-direct {v5, v1, v0}, Lg5/c;-><init>(Lmb/a7;Lmb/r2;)V

    invoke-virtual {v0, v5}, Lmb/r2;->x(Lmb/l7;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmb/t;

    invoke-virtual {v5}, Lmb/t;->c()Lmb/c6;

    move-result-object v5

    invoke-virtual {v2, v4, v9, v5}, Lorg/codehaus/janino/util/t0;->h(SLjava/lang/String;Lmb/c6;)Lorg/codehaus/janino/util/i0;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object/from16 v16, v4

    invoke-virtual {v1, v3}, Lmb/a7;->c([Lmb/x3;)S

    move-result v4

    iget-boolean v11, v8, Lmb/q2;->d:Z

    if-eqz v11, :cond_6

    or-int/lit16 v4, v4, 0x80

    int-to-short v4, v4

    :cond_6
    iget-object v11, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v11, v11, Lmb/y2;

    if-eqz v11, :cond_b

    or-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    and-int/lit8 v11, v4, 0x8

    if-eqz v11, :cond_8

    const-string v11, "<clinit>"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v1}, Lmb/a7;->V0()I

    move-result v11

    if-lt v11, v5, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "Static interface methods only available for target version 8+"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_8
    instance-of v11, v0, Lmb/u3;

    if-eqz v11, :cond_a

    move-object v11, v0

    check-cast v11, Lmb/u3;

    invoke-virtual {v11}, Lmb/u3;->y()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v1}, Lmb/a7;->V0()I

    move-result v11

    if-lt v11, v5, :cond_9

    goto :goto_1

    :cond_9
    const-string v0, "Default methods only available for target version 8+"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_a
    or-int/lit16 v4, v4, 0x400

    int-to-short v4, v4

    :cond_b
    :goto_1
    new-instance v5, Lg5/c;

    invoke-direct {v5, v1, v0}, Lg5/c;-><init>(Lmb/a7;Lmb/r2;)V

    invoke-virtual {v0, v5}, Lmb/r2;->x(Lmb/l7;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmb/t;

    invoke-virtual {v5}, Lmb/t;->c()Lmb/c6;

    move-result-object v5

    invoke-virtual {v2, v4, v9, v5}, Lorg/codehaus/janino/util/t0;->h(SLjava/lang/String;Lmb/c6;)Lorg/codehaus/janino/util/i0;

    move-result-object v4

    :goto_2
    iget-object v5, v4, Lorg/codehaus/janino/util/i0;->e:Lorg/codehaus/janino/util/t0;

    invoke-static {v3}, La/a;->a([Lmb/x3;)[Lmb/r0;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v2}, Lmb/a7;->J([Lmb/r0;Lorg/codehaus/janino/util/c;Lorg/codehaus/janino/util/t0;)V

    array-length v3, v6

    if-lez v3, :cond_f

    const-string v3, "Exceptions"

    invoke-virtual {v2, v3}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v14, v13

    :goto_3
    array-length v15, v6

    if-ge v14, v15, :cond_d

    aget-object v15, v6, v14

    move/from16 v17, v13

    instance-of v13, v15, Lmb/v4;

    if-eqz v13, :cond_c

    move-object v13, v15

    check-cast v13, Lmb/v4;

    iget-object v13, v13, Lmb/v4;->e:[Ljava/lang/String;

    array-length v9, v13

    if-ne v9, v12, :cond_c

    sget-object v9, Lmb/a7;->o:Ljava/util/regex/Pattern;

    aget-object v13, v13, v17

    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v15}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v9

    check-cast v9, Lmb/x;

    invoke-virtual {v9}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v17

    goto :goto_3

    :cond_d
    move/from16 v17, v13

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [S

    move/from16 v9, v17

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_e

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Short;

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v13

    aput-short v13, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_e
    new-instance v9, Lorg/codehaus/janino/util/s0;

    const/4 v11, 0x2

    invoke-direct {v9, v3, v6, v11}, Lorg/codehaus/janino/util/s0;-><init>(SLjava/lang/Object;I)V

    invoke-virtual {v4, v9}, Lorg/codehaus/janino/util/i0;->b(Lorg/codehaus/janino/util/h;)V

    goto :goto_6

    :cond_f
    move/from16 v17, v13

    :goto_6
    instance-of v3, v0, Lmb/u3;

    if-eqz v3, :cond_10

    move-object v6, v0

    check-cast v6, Lmb/u3;

    iget-object v6, v6, Lmb/u3;->l:Lmb/z1;

    if-eqz v6, :cond_10

    new-instance v9, Lorg/codehaus/janino/util/s0;

    const-string v11, "AnnotationDefault"

    invoke-virtual {v2, v11}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v11

    iget-object v13, v0, Lmb/r2;->e:Lmb/s5;

    instance-of v13, v13, Lmb/z0;

    invoke-virtual {v1, v6, v2, v13}, Lmb/a7;->Q(Lmb/z1;Lorg/codehaus/janino/util/t0;Z)Lorg/codehaus/janino/util/b0;

    move-result-object v2

    invoke-direct {v9, v11, v2, v12}, Lorg/codehaus/janino/util/s0;-><init>(SLjava/lang/Object;I)V

    invoke-virtual {v4, v9}, Lorg/codehaus/janino/util/i0;->b(Lorg/codehaus/janino/util/h;)V

    :cond_10
    iget-object v2, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v2, v2, Lmb/y2;

    if-eqz v2, :cond_14

    move-object v2, v0

    check-cast v2, Lmb/u3;

    iget-object v6, v2, Lmb/l0;->d:[Lmb/x3;

    invoke-static {v6}, La/a;->b([Lmb/x3;)I

    move-result v9

    if-ne v9, v12, :cond_12

    invoke-virtual {v1}, Lmb/a7;->V0()I

    move-result v9

    const/16 v11, 0x9

    if-lt v9, v11, :cond_11

    goto :goto_7

    :cond_11
    const-string v0, "Private interface methods only available for target version 9+"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_12
    :goto_7
    const-string v9, "strictfp"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v2}, Lmb/u3;->y()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v2}, Lmb/u3;->z()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_8

    :cond_13
    const-string v0, "Modifier strictfp only allowed for interface default methods and static interface methods"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_14
    :goto_8
    iget-object v2, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v2, v2, Lmb/y2;

    if-eqz v2, :cond_15

    move-object v2, v0

    check-cast v2, Lmb/u3;

    invoke-virtual {v2}, Lmb/u3;->z()Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v2, v2, Lmb/l0;->d:[Lmb/x3;

    invoke-static {v2}, La/a;->b([Lmb/x3;)I

    move-result v2

    if-ne v2, v12, :cond_17

    :cond_15
    if-eqz v3, :cond_16

    move-object v2, v0

    check-cast v2, Lmb/u3;

    iget-object v2, v2, Lmb/l0;->d:[Lmb/x3;

    const-string v6, "abstract"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    if-eqz v3, :cond_1d

    move-object v2, v0

    check-cast v2, Lmb/u3;

    iget-object v2, v2, Lmb/l0;->d:[Lmb/x3;

    const-string v3, "native"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_17
    move-object v2, v0

    check-cast v2, Lmb/u3;

    invoke-virtual {v2}, Lmb/u3;->y()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v3, v3, Lmb/y2;

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lmb/u3;->z()Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v7, :cond_18

    goto :goto_9

    :cond_18
    const-string v0, "Default method declarations must have a body"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_19
    const-string v0, "Static interface method declarations must not have the \"default\" modifier"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_1a
    const-string v0, "Only interface method declarations may have the \"default\" modifier"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_1b
    if-nez v7, :cond_1c

    goto/16 :goto_10

    :cond_1c
    const-string v0, "Method must not declare a body"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_1d
    :goto_9
    new-instance v2, Lmb/n;

    invoke-direct {v2, v5}, Lmb/n;-><init>(Lorg/codehaus/janino/util/t0;)V

    iget-object v3, v1, Lmb/a7;->e:Lmb/n;

    iput-object v2, v1, Lmb/a7;->e:Lmb/n;

    :try_start_0
    invoke-virtual {v2}, Lmb/n;->q()V

    instance-of v6, v0, Lmb/u3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "this"

    if-eqz v6, :cond_1e

    :try_start_1
    move-object v6, v0

    check-cast v6, Lmb/u3;

    invoke-virtual {v6}, Lmb/u3;->z()Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, v0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {v1, v6}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v6

    invoke-virtual {v1, v6, v9}, Lmb/a7;->i(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    goto :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_1e
    :goto_a
    instance-of v6, v0, Lmb/s1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "$ordinal"

    const-string v13, "$name"

    if-eqz v6, :cond_20

    :try_start_2
    iget-object v6, v0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {v1, v6}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v6

    iget-object v14, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v14, v9, v6, v12}, Lmb/n;->b(Ljava/lang/String;Lmb/b0;S)Lmb/j3;

    move-result-object v6

    iget-short v6, v6, Lmb/j3;->a:S

    sget-object v9, Lorg/codehaus/janino/util/s0;->j:Lorg/codehaus/janino/util/j0;

    invoke-virtual {v1, v6, v9}, Lmb/a7;->o2(SLorg/codehaus/janino/util/r0;)V

    move-object v6, v0

    check-cast v6, Lmb/s1;

    iget-object v9, v6, Lmb/s1;->m:Ljava/util/HashMap;

    iget-object v14, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v14, v14, Lmb/f2;

    if-eqz v14, :cond_1f

    iget-object v14, v1, Lmb/a7;->h:Lmb/b;

    iget-object v14, v14, Lmb/a0;->r:Lmb/x;

    new-instance v15, Lmb/g3;

    invoke-direct {v15, v12, v14}, Lmb/g3;-><init>(ZLmb/b0;)V

    move-object/from16 v12, v16

    invoke-virtual {v1, v14, v12}, Lmb/a7;->i(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v14

    iput-object v14, v15, Lmb/g3;->c:Lmb/j3;

    invoke-virtual {v9, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lmb/x;->A:Lmb/w;

    new-instance v14, Lmb/g3;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v12}, Lmb/g3;-><init>(ZLmb/b0;)V

    const/4 v15, 0x0

    invoke-virtual {v1, v12, v15}, Lmb/a7;->i(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v12

    iput-object v12, v14, Lmb/g3;->c:Lmb/j3;

    invoke-virtual {v9, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v6, v6, Lmb/l0;->c:Lmb/v5;

    check-cast v6, Lmb/e0;

    iget-object v6, v6, Lmb/e0;->k:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmb/s;

    invoke-virtual {v12}, Lmb/s;->e()Lmb/x;

    move-result-object v14

    new-instance v15, Lmb/g3;

    move-object/from16 p2, v6

    const/4 v6, 0x1

    invoke-direct {v15, v6, v14}, Lmb/g3;-><init>(ZLmb/b0;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Lmb/a7;->i(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v14

    iput-object v14, v15, Lmb/g3;->c:Lmb/j3;

    invoke-virtual {v12}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p2

    goto :goto_b

    :cond_20
    invoke-virtual/range {p0 .. p1}, Lmb/a7;->t(Lmb/r2;)V

    iget-object v6, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v6}, Lmb/n;->f()Lmb/k;

    instance-of v6, v0, Lmb/s1;

    if-eqz v6, :cond_27

    move-object v6, v0

    check-cast v6, Lmb/s1;

    iget-object v9, v6, Lmb/s1;->m:Ljava/util/HashMap;

    iget-object v12, v6, Lmb/m3;->a:Lhb/c;

    iget-object v14, v6, Lmb/s1;->l:Lmb/t1;

    if-eqz v14, :cond_23

    instance-of v9, v14, Lmb/g5;

    if-eqz v9, :cond_21

    invoke-virtual {v1, v6}, Lmb/a7;->m(Lmb/s1;)V

    :cond_21
    invoke-virtual {v1, v14}, Lmb/a7;->E(Lmb/f1;)Z

    iget-object v9, v0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {v1, v9}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v9

    invoke-virtual {v1, v9}, Lmb/a7;->p2(Lmb/b0;)Lorg/codehaus/janino/util/r0;

    move-result-object v9

    move/from16 v11, v17

    invoke-virtual {v1, v11, v9}, Lmb/a7;->o2(SLorg/codehaus/janino/util/r0;)V

    instance-of v9, v14, Lmb/g5;

    if-eqz v9, :cond_22

    invoke-virtual {v1, v6}, Lmb/a7;->p1(Lmb/s1;)V

    :cond_22
    move-object/from16 v19, v4

    const/4 v11, 0x0

    goto/16 :goto_e

    :cond_23
    iget-object v14, v6, Lmb/l0;->c:Lmb/v5;

    check-cast v14, Lmb/e0;

    invoke-virtual {v1, v14}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v14

    invoke-virtual {v14}, Lmb/x;->x()Lmb/x;

    move-result-object v14

    if-eqz v14, :cond_26

    invoke-virtual {v14}, Lmb/x;->v()Lmb/x;

    move-result-object v14

    if-eqz v14, :cond_24

    new-instance v15, Lmb/u4;

    move-object/from16 v19, v4

    new-instance v4, Lmb/c5;

    invoke-direct {v4, v12, v14}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v15, v12, v4}, Lmb/u4;-><init>(Lhb/c;Lmb/s5;)V

    goto :goto_c

    :cond_24
    move-object/from16 v19, v4

    const/4 v15, 0x0

    :goto_c
    invoke-virtual {v1, v6}, Lmb/a7;->m(Lmb/s1;)V

    iget-object v4, v0, Lmb/l0;->c:Lmb/v5;

    instance-of v4, v4, Lmb/f2;

    if-eqz v4, :cond_25

    new-instance v4, Lmb/h3;

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmb/g3;

    invoke-direct {v4, v12, v13}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    new-instance v13, Lmb/h3;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmb/g3;

    invoke-direct {v13, v12, v9}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    const/4 v11, 0x2

    new-array v9, v11, [Lmb/y4;

    const/16 v17, 0x0

    aput-object v4, v9, v17

    const/16 v18, 0x1

    aput-object v13, v9, v18

    goto :goto_d

    :cond_25
    const/4 v11, 0x0

    new-array v9, v11, [Lmb/y4;

    :goto_d
    new-instance v4, Lmb/g5;

    invoke-direct {v4, v12, v15, v9}, Lmb/g5;-><init>(Lhb/c;Lmb/y4;[Lmb/y4;)V

    invoke-virtual {v4, v0}, Lmb/t1;->a(Lmb/a5;)V

    invoke-virtual {v1, v4}, Lmb/a7;->E(Lmb/f1;)Z

    iget-object v4, v0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {v1, v4}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmb/a7;->p2(Lmb/b0;)Lorg/codehaus/janino/util/r0;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v4}, Lmb/a7;->o2(SLorg/codehaus/janino/util/r0;)V

    invoke-virtual {v1, v6}, Lmb/a7;->p1(Lmb/s1;)V

    goto :goto_e

    :cond_26
    new-instance v0, Lhb/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\" has no superclass"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v12, v2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_27
    move-object/from16 v19, v4

    move/from16 v11, v17

    :goto_e
    if-eqz v7, :cond_32

    invoke-virtual {v1, v7}, Lmb/a7;->Y(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual/range {p0 .. p1}, Lmb/a7;->T0(Lmb/r2;)Lmb/b0;

    move-result-object v4

    sget-object v6, Lmb/x;->v:Lmb/w;

    if-ne v4, v6, :cond_28

    invoke-virtual/range {p0 .. p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 v4, 0xb1

    invoke-virtual {v1, v4}, Lmb/a7;->q2(I)V

    iget-object v4, v1, Lmb/a7;->e:Lmb/n;

    iget-object v4, v4, Lmb/n;->g:Lmb/h;

    const/4 v15, 0x0

    iput-object v15, v4, Lmb/k;->d:Lmb/p6;

    goto :goto_f

    :cond_28
    const-string v0, "Method must return a value"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_29
    :goto_f
    iget-object v4, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v4}, Lmb/n;->p()V

    iput-object v3, v1, Lmb/a7;->e:Lmb/n;

    iget v3, v1, Lmb/a7;->f:I

    if-lez v3, :cond_2a

    :goto_10
    return-void

    :cond_2a
    move v3, v11

    :goto_11
    iget-object v4, v2, Lmb/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2b

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/m;

    invoke-virtual {v4}, Lmb/m;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2b
    iget-object v3, v2, Lmb/n;->e:Lmb/k;

    :goto_12
    iget-object v6, v2, Lmb/n;->f:Lmb/h;

    if-eq v3, v6, :cond_2d

    instance-of v6, v3, Lmb/q4;

    if-eqz v6, :cond_2c

    move-object v6, v3

    check-cast v6, Lmb/q4;

    iget v7, v6, Lmb/k;->a:I

    rem-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2c

    iget-object v9, v6, Lmb/k;->e:Lmb/n;

    invoke-virtual {v9, v6}, Lmb/n;->j(Lmb/h;)V

    rsub-int/lit8 v6, v7, 0x4

    invoke-virtual {v9, v6}, Lmb/n;->c(I)I

    invoke-virtual {v9}, Lmb/n;->g()V

    :cond_2c
    iget-object v3, v3, Lmb/k;->c:Lmb/k;

    goto :goto_12

    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v11

    :goto_13
    if-ge v6, v3, :cond_2e

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lmb/m;

    invoke-virtual {v7}, Lmb/m;->b()V

    goto :goto_13

    :cond_2e
    iget-boolean v3, v1, Lmb/a7;->l:Z

    if-eqz v3, :cond_30

    const-string v3, "LocalVariableTable"

    invoke-virtual {v5, v3}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    iget-object v3, v2, Lmb/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v11

    :cond_2f
    :goto_14
    if-ge v6, v4, :cond_30

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lmb/j3;

    iget-object v9, v7, Lmb/j3;->b:Ljava/lang/String;

    if-eqz v9, :cond_2f

    iget-object v7, v7, Lmb/j3;->c:Lmb/b0;

    check-cast v7, Lmb/x;

    invoke-virtual {v7}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    invoke-virtual {v5, v9}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    goto :goto_14

    :cond_30
    new-instance v3, Lmb/q;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lmb/q;-><init>(I)V

    invoke-virtual {v0, v3}, Lmb/r2;->x(Lmb/l7;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :try_start_3
    instance-of v4, v0, Lmb/s1;

    if-eqz v4, :cond_31

    check-cast v0, Lmb/s1;

    iget-object v0, v0, Lmb/s1;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v13

    goto :goto_15

    :catch_0
    move-exception v0

    goto :goto_16

    :cond_31
    move v13, v11

    :goto_15
    add-int/2addr v3, v13

    iget-object v0, v8, Lmb/q2;->c:[Lmb/p2;

    array-length v0, v0

    add-int/2addr v3, v0

    iget-boolean v0, v1, Lmb/a7;->k:Z

    iget-boolean v1, v1, Lmb/a7;->l:Z

    invoke-virtual {v2, v3, v0, v1}, Lmb/n;->e(IZZ)Lorg/codehaus/janino/util/l;

    move-result-object v0

    move-object/from16 v4, v19

    invoke-virtual {v4, v0}, Lorg/codehaus/janino/util/i0;->b(Lorg/codehaus/janino/util/h;)V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_16
    new-instance v1, Lhb/b;

    const/4 v15, 0x0

    invoke-direct {v1, v10, v15, v0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_32
    const/4 v15, 0x0

    :try_start_4
    const-string v0, "Method must have a body"

    invoke-virtual {v1, v10, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_17
    iget-object v2, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/n;->p()V

    iput-object v3, v1, Lmb/a7;->e:Lmb/n;

    throw v0
.end method

.method public final G0(Lmb/f1;)Z
    .locals 2

    new-instance v0, Lmb/t6;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-interface {p1, v0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final G1(Lmb/f1;)V
    .locals 2

    new-instance v0, Lmb/t6;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-interface {p1, v0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    return-void
.end method

.method public final H(Lmb/v2;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lmb/a7;->Q0(Lmb/v5;)Lmb/m0;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/v5;

    new-instance v3, Lmb/g6;

    invoke-virtual {p0, p1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "this$"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v0

    invoke-direct {v3, v4, v1, v0}, Lmb/g6;-><init>(Lmb/x;Ljava/lang/String;Lmb/x;)V

    move-object v0, p1

    check-cast v0, Lmb/e0;

    invoke-virtual {v0, v3}, Lmb/e0;->z(Lmb/g6;)V

    :cond_1
    check-cast p1, Lmb/e0;

    invoke-virtual {p0, p1}, Lmb/a7;->F(Lmb/e0;)V

    return-void
.end method

.method public final H0(Lmb/y4;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/y4;->d:Ljava/lang/Object;

    sget-object v1, Lmb/y4;->e:Lmb/q;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lmb/t6;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, p1, Lmb/y4;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final H1(Lmb/a5;Lmb/a5;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eq p1, p2, :cond_2

    instance-of v1, p1, Lmb/f1;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lmb/r5;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lmb/r5;

    iget-object v1, v1, Lmb/r5;->h:Lmb/e1;

    if-eq v1, v0, :cond_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmb/f1;

    invoke-virtual {p0, v0}, Lmb/a7;->G1(Lmb/f1;)V

    :cond_1
    invoke-interface {p1}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final I(Lmb/y2;)V
    .locals 8

    invoke-virtual {p0, p1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v0

    iget-object v1, p1, Lmb/y2;->j:[Lmb/s5;

    iget-object v2, p1, Lmb/y2;->k:Ljava/util/ArrayList;

    array-length v3, v1

    new-array v4, v3, [Lmb/b0;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    aget-object v7, v1, v6

    invoke-virtual {p0, v7}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lmb/x;

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_1

    aget-object v7, v4, v6

    check-cast v7, Lmb/x;

    aput-object v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v3}, Lmb/a7;->c([Lmb/x3;)S

    move-result v3

    or-int/lit16 v3, v3, 0x200

    int-to-short v3, v3

    or-int/lit16 v3, v3, 0x400

    int-to-short v3, v3

    instance-of v4, p1, Lmb/s0;

    if-eqz v4, :cond_2

    or-int/lit16 v3, v3, 0x2000

    int-to-short v3, v3

    :cond_2
    instance-of v4, p1, Lmb/s3;

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    :cond_3
    iget-object v4, p0, Lmb/a7;->h:Lmb/b;

    iget-object v4, v4, Lmb/a0;->n:Lmb/x;

    invoke-virtual {p0, v3, v0, v4, v1}, Lmb/a7;->Q1(SLmb/x;Lmb/x;[Lmb/x;)Lorg/codehaus/janino/util/t0;

    move-result-object v0

    invoke-virtual {p1}, Lmb/m0;->getAnnotations()[Lmb/r0;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v0}, Lmb/a7;->J([Lmb/r0;Lorg/codehaus/janino/util/c;Lorg/codehaus/janino/util/t0;)V

    iget-boolean v1, p0, Lmb/a7;->j:Z

    if-eqz v1, :cond_5

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object v1, v1, Lhb/c;->l:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lmb/y2;->i:Ljava/lang/String;

    const-string v4, ".java"

    invoke-static {v1, v3, v4}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v3, v0, Lorg/codehaus/janino/util/t0;->j:Ljava/util/ArrayList;

    new-instance v4, Lorg/codehaus/janino/util/y;

    const-string v6, "SourceFile"

    invoke-virtual {v0, v6}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v6

    invoke-virtual {v0, v1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v1

    const/4 v7, 0x1

    invoke-direct {v4, v6, v1, v7}, Lorg/codehaus/janino/util/y;-><init>(SSI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->M1(Lmb/m0;Lorg/codehaus/janino/util/t0;Ljava/util/ArrayList;)V

    :cond_6
    invoke-virtual {p0, p1, v0, v5}, Lmb/a7;->P(Lmb/m0;Lorg/codehaus/janino/util/t0;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v5, v1, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lmb/k2;

    invoke-virtual {p0, v3, v0}, Lmb/a7;->e(Lmb/k2;Lorg/codehaus/janino/util/t0;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1, v0}, Lmb/a7;->O(Lmb/m0;Lorg/codehaus/janino/util/t0;)V

    :try_start_0
    iget-object p0, p0, Lmb/a7;->i:Lc5/o;

    invoke-virtual {p0, v0}, Lc5/o;->i(Lorg/codehaus/janino/util/t0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lhb/b;

    invoke-virtual {v0}, Lorg/codehaus/janino/util/t0;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final I0(Lmb/x5;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p1, Lmb/x5;->f:Ljava/lang/String;

    iget-object p1, p1, Lmb/x5;->g:Lmb/y4;

    const-string v1, "+"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "-"

    sget-object v2, Lmb/a7;->q:Lmb/q;

    if-ne v0, v1, :cond_9

    instance-of v0, p1, Lmb/x2;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lmb/d3;

    iget-object v0, v0, Lmb/d3;->f:Ljava/lang/String;

    sget-object v1, Lmb/a7;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 p0, -0x80000000

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lmb/a7;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 p0, -0x8000000000000000L

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    goto/16 :goto_0

    :cond_3
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    neg-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_5

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    neg-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_7

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_b

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    neg-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v1, "!"

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, p1, :cond_a

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_b

    return-object p1

    :cond_b
    :goto_0
    return-object v2
.end method

.method public final I1(Lmb/k3;Lmb/g3;)Lmb/b0;
    .locals 2

    iget-object v0, p2, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {p2}, Lmb/g3;->a()S

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    iget-object p0, p2, Lmb/g3;->b:Lmb/b0;

    return-object p0
.end method

.method public final J([Lmb/r0;Lorg/codehaus/janino/util/c;Lorg/codehaus/janino/util/t0;)V
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    invoke-interface {v4}, Lmb/r0;->getType()Lmb/s5;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v6

    check-cast v6, Lmb/x;

    iget-object v7, v6, Lmb/x;->r:[Lmb/r;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lmb/x;->r()[Lmb/r;

    move-result-object v7

    iput-object v7, v6, Lmb/x;->r:[Lmb/r;

    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    array-length v5, v7

    move v8, v2

    :goto_2
    if-ge v8, v5, :cond_3

    aget-object v9, v7, v8

    invoke-interface {v9}, Lmb/r;->b()Lmb/b0;

    move-result-object v10

    iget-object v11, p0, Lmb/a7;->h:Lmb/b;

    iget-object v11, v11, Lmb/a0;->a:Lmb/x;

    if-eq v10, v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v9}, Lmb/r;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmb/s;

    invoke-virtual {v5}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SOURCE"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    const-string v7, "CLASS"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v5, v2

    goto :goto_3

    :cond_4
    const-string v7, "RUNTIME"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lg5/i;

    invoke-direct {v8, p0, v6, v7, p3}, Lg5/i;-><init>(Lmb/a7;Lmb/x;Ljava/util/HashMap;Lorg/codehaus/janino/util/t0;)V

    invoke-interface {v4, v8}, Lmb/r0;->s(Lmb/e7;)Ljava/lang/Object;

    invoke-virtual {v6}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4, v7}, Lorg/codehaus/janino/util/c;->a(ZLjava/lang/String;Ljava/util/HashMap;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Duplicate annotation \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v5, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p2, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    return-void
.end method

.method public final J0(Lmb/u4;)Lmb/u5;
    .locals 2

    iget-object v0, p1, Lmb/u4;->h:Lmb/u5;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    :goto_0
    instance-of v1, v0, Lmb/u5;

    if-nez v1, :cond_1

    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lmb/u5;

    invoke-static {v0}, Lmb/a7;->C1(Lmb/u5;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lmb/u5;->g()Lmb/v5;

    move-result-object p0

    check-cast p0, Lmb/e0;

    iput-object p0, p1, Lmb/u4;->g:Lmb/e0;

    iput-object v0, p1, Lmb/u4;->h:Lmb/u5;

    return-object v0

    :cond_2
    const-string v0, "No current instance available in static method"

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J1(Lmb/k3;Lmb/b0;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    check-cast p2, Lmb/x;

    const/4 p1, 0x3

    if-gt p3, p1, :cond_0

    invoke-static {p2}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x1a

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    if-gt p3, p1, :cond_1

    invoke-static {p2}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    invoke-virtual {p0, p3}, Lmb/a7;->q2(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc4

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    invoke-static {p2}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    if-ltz p3, :cond_4

    const p1, 0xffff

    if-gt p3, p1, :cond_4

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    shr-int/lit8 p2, p3, 0x8

    int-to-byte p2, p2

    int-to-byte v0, p3

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lmb/n;->c(I)I

    move-result v1

    iget-object p1, p1, Lmb/n;->d:[B

    add-int/lit8 v2, v1, 0x1

    aput-byte p2, p1, v1

    aput-byte v0, p1, v2

    :goto_0
    int-to-short p1, p3

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    iget-object p2, p2, Lmb/n;->g:Lmb/h;

    iget-object p2, p2, Lmb/k;->d:Lmb/p6;

    invoke-virtual {p2}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v0, p3, :cond_3

    aget-object v2, p2, v0

    if-ne v1, p1, :cond_2

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, v2}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void

    :cond_2
    invoke-interface {v2}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lhb/b;

    const-string p2, "Invalid local variable index "

    invoke-static {p1, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lhb/b;

    const-string p1, "Unsigned short value out of legal range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final K(Lmb/y4;Lmb/b0;Ljava/util/Iterator;Ljava/lang/String;)Lmb/b0;
    .locals 8

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object v1, p0, Lmb/a7;->h:Lmb/b;

    const-string v2, "+"

    if-ne p4, v2, :cond_0

    iget-object v3, v1, Lmb/a0;->r:Lmb/x;

    if-ne p2, v3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmb/y4;

    invoke-virtual {p0, p1, p2, p4, p3}, Lmb/a7;->Z(Lmb/y4;Lmb/b0;Lmb/y4;Ljava/util/Iterator;)Lmb/x;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmb/y4;

    invoke-virtual {p0, p2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object p2

    :cond_1
    const-string v3, "|"

    const/4 v4, 0x0

    const-string v5, "\""

    if-eq p4, v3, :cond_14

    const-string v3, "^"

    if-eq p4, v3, :cond_14

    const-string v3, "&"

    if-ne p4, v3, :cond_2

    goto/16 :goto_7

    :cond_2
    const-string v3, "*"

    if-eq p4, v3, :cond_e

    const-string v3, "/"

    if-eq p4, v3, :cond_e

    const-string v3, "%"

    if-eq p4, v3, :cond_e

    if-eq p4, v2, :cond_e

    const-string v3, "-"

    if-ne p4, v3, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string p1, ">>>"

    const-string v1, ">>"

    const-string v2, "<<"

    if-eq p4, v2, :cond_5

    if-eq p4, v1, :cond_5

    if-ne p4, p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lhb/b;

    const-string p1, "Unexpected operator \""

    invoke-static {p1, p4, v5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/y4;

    invoke-virtual {p0, v3, p2}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object p2

    invoke-virtual {p0, v3}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v6

    sget-object v7, Lmb/x;->A:Lmb/w;

    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    sget-object v7, Lmb/x;->B:Lmb/w;

    if-ne v6, v7, :cond_c

    invoke-virtual {p0, v3}, Lmb/a7;->f(Lmb/k3;)V

    iget-object v5, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v5}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    const/16 v5, 0x88

    invoke-virtual {p0, v5}, Lmb/a7;->q2(I)V

    iget-object v5, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v5}, Lmb/n;->k()V

    :goto_1
    iget-object v5, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v5}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v5, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v5}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v5

    if-ne p4, v2, :cond_7

    const/16 v6, 0x78

    goto :goto_2

    :cond_7
    if-ne p4, v1, :cond_8

    const/16 v6, 0x7a

    goto :goto_2

    :cond_8
    if-ne p4, p1, :cond_9

    const/16 v6, 0x7c

    goto :goto_2

    :cond_9
    const v6, 0x7fffffff

    :goto_2
    sget-object v7, Lorg/codehaus/janino/util/s0;->e:Lorg/codehaus/janino/util/j0;

    if-ne v5, v7, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_a
    sget-object v7, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    if-ne v5, v7, :cond_b

    const/4 v7, 0x1

    :goto_3
    add-int/2addr v6, v7

    invoke-virtual {p0, v3}, Lmb/a7;->f(Lmb/k3;)V

    invoke-virtual {p0, v6}, Lmb/a7;->q2(I)V

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3, v5}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    goto :goto_0

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Shift distance of type \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" is not allowed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_d
    return-object p2

    :cond_e
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/y4;

    if-ne p4, v2, :cond_10

    iget-object v3, v1, Lmb/a0;->r:Lmb/x;

    if-eq p2, v3, :cond_f

    invoke-virtual {p0, v0}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v3

    iget-object v4, v1, Lmb/a0;->r:Lmb/x;

    if-ne v3, v4, :cond_10

    :cond_f
    invoke-virtual {p0, p1, p2, v0, p3}, Lmb/a7;->Z(Lmb/y4;Lmb/b0;Lmb/y4;Ljava/util/Iterator;)Lmb/x;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0, v0}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v3

    invoke-virtual {p0, p2}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v4

    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    move-object v4, p2

    :goto_5
    invoke-virtual {p0, v3}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v5

    if-eqz v5, :cond_12

    goto :goto_6

    :cond_12
    move-object v5, v3

    :goto_6
    invoke-virtual {p0, v0, v4, v5}, Lmb/a7;->p(Lmb/y4;Lmb/b0;Lmb/b0;)Lmb/w;

    move-result-object v4

    invoke-virtual {p0, v0, p2}, Lmb/a7;->n0(Lmb/k3;Lmb/b0;)Lmb/x;

    move-result-object p2

    invoke-virtual {p0, v0, p2, v4}, Lmb/a7;->R1(Lmb/k3;Lmb/x;Lmb/w;)V

    invoke-virtual {p0, v0}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    invoke-virtual {p0, v0, v3}, Lmb/a7;->n0(Lmb/k3;Lmb/b0;)Lmb/x;

    move-result-object p2

    invoke-virtual {p0, v0, p2, v4}, Lmb/a7;->R1(Lmb/k3;Lmb/x;Lmb/w;)V

    invoke-virtual {p0, v0, p4}, Lmb/a7;->N1(Lmb/y4;Ljava/lang/String;)V

    move-object p2, v4

    goto :goto_4

    :cond_13
    return-object p2

    :cond_14
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/y4;

    invoke-virtual {p0, v2}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v3

    invoke-virtual {p0, p2}, Lmb/a7;->y1(Lmb/b0;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {p0, v3}, Lmb/a7;->y1(Lmb/b0;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {p0, p2}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v6

    if-eqz v6, :cond_15

    goto :goto_8

    :cond_15
    move-object v6, p2

    :goto_8
    invoke-virtual {p0, v3}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v7

    if-eqz v7, :cond_16

    goto :goto_9

    :cond_16
    move-object v7, v3

    :goto_9
    invoke-virtual {p0, v2, v6, v7}, Lmb/a7;->p(Lmb/y4;Lmb/b0;Lmb/b0;)Lmb/w;

    move-result-object v6

    sget-object v7, Lmb/x;->A:Lmb/w;

    if-eq v6, v7, :cond_18

    sget-object v7, Lmb/x;->B:Lmb/w;

    if-ne v6, v7, :cond_17

    goto :goto_a

    :cond_17
    new-instance p0, Lhb/a;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid operand type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v2, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, p2, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_a
    invoke-virtual {p0, v2, p2}, Lmb/a7;->n0(Lmb/k3;Lmb/b0;)Lmb/x;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v6}, Lmb/a7;->R1(Lmb/k3;Lmb/x;Lmb/w;)V

    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    invoke-virtual {p0, v2, v3}, Lmb/a7;->n0(Lmb/k3;Lmb/b0;)Lmb/x;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v6}, Lmb/a7;->R1(Lmb/k3;Lmb/x;Lmb/w;)V

    invoke-virtual {p0, v2, p4}, Lmb/a7;->j(Lmb/y4;Ljava/lang/String;)V

    :goto_b
    move-object p2, v6

    goto :goto_7

    :cond_19
    sget-object v6, Lmb/x;->D:Lmb/w;

    if-eq p2, v6, :cond_1b

    invoke-virtual {p0, p2}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v7

    if-eqz v7, :cond_1a

    goto :goto_c

    :cond_1a
    move-object v7, p2

    :goto_c
    if-ne v7, v6, :cond_1d

    :cond_1b
    if-eq v3, v6, :cond_1e

    invoke-virtual {p0, v3}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v7

    if-eqz v7, :cond_1c

    goto :goto_d

    :cond_1c
    move-object v7, v3

    :goto_d
    if-ne v7, v6, :cond_1d

    goto :goto_e

    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Operator \""

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" not defined on types \""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" and \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_1e
    :goto_e
    iget-object v7, v1, Lmb/a0;->c:Lmb/x;

    if-ne p2, v7, :cond_1f

    invoke-virtual {p0, p1, v7, v6}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    :cond_1f
    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    iget-object p2, v1, Lmb/a0;->c:Lmb/x;

    if-ne v3, p2, :cond_20

    invoke-virtual {p0, p1, p2, v6}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    :cond_20
    invoke-virtual {p0, v2, p4}, Lmb/a7;->j(Lmb/y4;Ljava/lang/String;)V

    goto :goto_b

    :cond_21
    return-object p2
.end method

.method public final K0(Lmb/m5;)Lmb/x;
    .locals 5

    iget-object v0, p1, Lmb/m5;->f:Lmb/x;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    :goto_0
    instance-of v2, v0, Lmb/e5;

    if-nez v2, :cond_6

    instance-of v2, v0, Lmb/l1;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    instance-of v2, v0, Lmb/r2;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lmb/r2;

    instance-of v4, v2, Lmb/u3;

    if-eqz v4, :cond_3

    check-cast v2, Lmb/u3;

    invoke-virtual {v2}, Lmb/u3;->z()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "No current instance available in static method"

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    instance-of v2, v0, Lmb/v5;

    if-nez v2, :cond_4

    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_1

    :cond_4
    instance-of v2, v0, Lmb/e0;

    if-eqz v2, :cond_5

    check-cast v0, Lmb/e0;

    invoke-virtual {p0, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    iput-object p0, p1, Lmb/m5;->f:Lmb/x;

    return-object p0

    :cond_5
    const-string p1, "Only methods of classes can have a current instance"

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_2
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0
.end method

.method public final L(Lmb/y4;Lmb/k;Z)V
    .locals 1

    new-instance v0, Lad/a2;

    invoke-direct {v0, p0, p2, p3}, Lad/a2;-><init>(Lmb/a7;Lmb/k;Z)V

    invoke-virtual {p1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    return-void
.end method

.method public final M(Lmb/y4;Lmb/k;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    iget-object v1, p0, Lmb/a7;->h:Lmb/b;

    iget-object v1, v1, Lmb/a0;->c:Lmb/x;

    if-ne v0, v1, :cond_0

    sget-object v0, Lmb/x;->D:Lmb/w;

    invoke-virtual {p0, p1, v1, v0}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lmb/x;->D:Lmb/w;

    if-ne v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0, p2}, Lmb/a7;->f1(Lmb/k3;ILmb/k;)V

    return-void

    :cond_2
    const-string p2, "Not a boolean expression"

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final M0(Lmb/m1;)Lmb/g3;
    .locals 3

    iget-object v0, p1, Lmb/m1;->f:Lmb/g3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lmb/m1;->d:[Lmb/s5;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    new-instance v0, Lmb/g3;

    iget-boolean v1, p1, Lmb/m1;->c:Z

    invoke-direct {v0, v1, p0}, Lmb/g3;-><init>(ZLmb/b0;)V

    iput-object v0, p1, Lmb/m1;->f:Lmb/g3;

    return-object v0

    :cond_1
    const-string p0, "Multi-type CATCH parameters NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0
.end method

.method public final M1(Lmb/m0;Lorg/codehaus/janino/util/t0;Ljava/util/ArrayList;)V
    .locals 13

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    move-object/from16 v12, p3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/f1;

    invoke-virtual {p0, v3}, Lmb/a7;->G0(Lmb/f1;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lmb/u3;

    iget-object v4, p1, Lmb/m0;->a:Lhb/c;

    const-string v0, "static"

    const-string v2, "public"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmb/a7;->d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;

    move-result-object v5

    new-instance v7, Lmb/t4;

    const/4 v0, 0x1

    invoke-direct {v7, v4, v0}, Lmb/t4;-><init>(Lhb/c;I)V

    new-instance v9, Lmb/q2;

    invoke-direct {v9, v4}, Lmb/q2;-><init>(Lhb/c;)V

    new-array v10, v1, [Lmb/v4;

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-string v8, "<clinit>"

    invoke-direct/range {v3 .. v12}, Lmb/u3;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V

    invoke-virtual {v3, p1}, Lmb/u3;->c(Lmb/v5;)V

    invoke-virtual {p0, v3, p2}, Lmb/a7;->B(Lmb/r2;Lorg/codehaus/janino/util/t0;)V

    :cond_1
    return-void
.end method

.method public final N(Lmb/y4;)I
    .locals 2

    new-instance v0, Lmb/t6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final N0(Lmb/p2;Z)Lmb/g3;
    .locals 2

    iget-object v0, p1, Lmb/p2;->f:Lmb/g3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    check-cast v0, Lmb/x;

    invoke-virtual {p0, v0}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object v0

    :cond_1
    new-instance p0, Lmb/g3;

    iget-object p2, p1, Lmb/p2;->c:[Lmb/x3;

    const-string v1, "final"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p2, v0}, Lmb/g3;-><init>(ZLmb/b0;)V

    iput-object p0, p1, Lmb/p2;->f:Lmb/g3;

    return-object p0
.end method

.method public final N1(Lmb/y4;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v0

    const-string v1, "*"

    if-ne p2, v1, :cond_0

    const/16 p2, 0x68

    goto :goto_0

    :cond_0
    const-string v1, "/"

    if-ne p2, v1, :cond_1

    const/16 p2, 0x6c

    goto :goto_0

    :cond_1
    const-string v1, "%"

    if-ne p2, v1, :cond_2

    const/16 p2, 0x70

    goto :goto_0

    :cond_2
    const-string v1, "+"

    if-ne p2, v1, :cond_3

    const/16 p2, 0x60

    goto :goto_0

    :cond_3
    const-string v1, "-"

    if-ne p2, v1, :cond_4

    const/16 p2, 0x64

    goto :goto_0

    :cond_4
    const p2, 0x7fffffff

    :goto_0
    sget-object v1, Lorg/codehaus/janino/util/s0;->e:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    sget-object v1, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    sget-object v1, Lorg/codehaus/janino/util/s0;->f:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    sget-object v1, Lorg/codehaus/janino/util/s0;->g:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_8

    const/4 v1, 0x3

    :goto_1
    add-int/2addr p2, v1

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-virtual {p0, p2}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, v0}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void

    :cond_8
    new-instance p0, Lhb/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected type \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O(Lmb/m0;Lorg/codehaus/janino/util/t0;)V
    .locals 8

    iget-object v0, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/t3;

    invoke-virtual {p0, v3}, Lmb/a7;->D(Lmb/v5;)V

    invoke-virtual {p0, v3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v4

    invoke-virtual {v4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v4

    invoke-virtual {p0, p1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v5

    invoke-virtual {v5}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v5

    invoke-interface {v3}, Lmb/c4;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v6

    new-instance v7, Lorg/codehaus/janino/util/e0;

    check-cast v3, Lmb/m0;

    iget-object v3, v3, Lmb/m0;->b:[Lmb/x3;

    invoke-virtual {p0, v3}, Lmb/a7;->c([Lmb/x3;)S

    move-result v3

    invoke-direct {v7, v4, v5, v6, v3}, Lorg/codehaus/janino/util/e0;-><init>(SSSS)V

    invoke-virtual {p2, v7}, Lorg/codehaus/janino/util/t0;->g(Lorg/codehaus/janino/util/e0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final O0(Lmb/i3;Lmb/z5;)Lmb/g3;
    .locals 3

    iget-object v0, p2, Lmb/z5;->f:Lmb/g3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lmb/i3;->f:Lmb/s5;

    const/4 v1, 0x0

    :goto_0
    iget v2, p2, Lmb/z5;->d:I

    if-ge v1, v2, :cond_1

    new-instance v2, Lmb/z0;

    invoke-direct {v2, v0}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v1, Lmb/g3;

    iget-object p1, p1, Lmb/i3;->e:[Lmb/x3;

    const-string v2, "final"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lmb/g3;-><init>(ZLmb/b0;)V

    iput-object v1, p2, Lmb/z5;->f:Lmb/g3;

    return-object v1
.end method

.method public final O1(Lmb/k3;Lmb/b0;)V
    .locals 4

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->f()Lmb/k;

    move-result-object v0

    iget-object v1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    iget v2, v0, Lmb/k;->a:I

    int-to-short v2, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/janino/util/q0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-short v2, v1, Lorg/codehaus/janino/util/q0;->a:S

    iget-object v2, p1, Lmb/n;->l:Ljava/util/ArrayList;

    new-instance v3, Lmb/c;

    invoke-direct {v3, v1, v0}, Lmb/c;-><init>(Lorg/codehaus/janino/util/q0;Lmb/k;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    const/16 p1, 0xbb

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    check-cast p2, Lmb/x;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    return-void
.end method

.method public final P(Lmb/m0;Lorg/codehaus/janino/util/t0;I)V
    .locals 5

    :goto_0
    iget-object v0, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    iget-object v0, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/u3;

    invoke-virtual {p0, v0}, Lmb/a7;->e2(Lmb/u3;)Lmb/v;

    move-result-object v1

    iget-object v2, v0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {p0, v2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmb/a7;->T1(Lmb/v;Lmb/x;)Z

    move-result v1

    iget-object v2, p0, Lmb/a7;->h:Lmb/b;

    iget-object v2, v2, Lmb/a0;->o:Lmb/x;

    iget-object v3, v0, Lmb/l0;->d:[Lmb/x3;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-class v4, Lmb/r0;

    invoke-static {v3, v4}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Lkb/c;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/r0;

    invoke-interface {v4}, Lmb/r0;->getType()Lmb/s5;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v4

    if-ne v4, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    instance-of v3, p1, Lmb/y2;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "Method does not override a method declared in a supertype"

    iget-object p2, v0, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p2, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0, p2}, Lmb/a7;->B(Lmb/r2;Lorg/codehaus/janino/util/t0;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final P0(Lmb/k2;Lmb/z5;)Lmb/x0;
    .locals 1

    iget-object p2, p2, Lmb/z5;->e:Lmb/x0;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmb/k2;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lmb/k2;->e:[Lmb/x3;

    const-string v0, "final"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p2, Lmb/y4;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lmb/a7;->q:Lmb/q;

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p2
.end method

.method public final P1(Lmb/m3;IILmb/b0;)Lmb/x;
    .locals 4

    move-object v0, p4

    check-cast v0, Lmb/x;

    iget-object v1, p0, Lmb/a7;->h:Lmb/b;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_8

    if-nez p3, :cond_8

    invoke-virtual {v0}, Lmb/x;->H()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v0}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object v2

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    const/16 p1, 0xbc

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    sget-object p1, Lmb/x;->D:Lmb/w;

    if-ne p4, p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    sget-object p1, Lmb/x;->x:Lmb/w;

    if-ne p4, p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    sget-object p1, Lmb/x;->z:Lmb/w;

    if-ne p4, p1, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    sget-object p1, Lmb/x;->y:Lmb/w;

    if-ne p4, p1, :cond_3

    const/4 p1, 0x7

    goto :goto_0

    :cond_3
    sget-object p1, Lmb/x;->w:Lmb/w;

    if-ne p4, p1, :cond_4

    const/16 p1, 0x8

    goto :goto_0

    :cond_4
    sget-object p1, Lmb/x;->C:Lmb/w;

    if-ne p4, p1, :cond_5

    const/16 p1, 0x9

    goto :goto_0

    :cond_5
    sget-object p1, Lmb/x;->A:Lmb/w;

    if-ne p4, p1, :cond_6

    const/16 p1, 0xa

    goto :goto_0

    :cond_6
    sget-object p1, Lmb/x;->B:Lmb/w;

    if-ne p4, p1, :cond_7

    const/16 p1, 0xb

    goto :goto_0

    :cond_7
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lmb/a7;->r2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-ne p2, v2, :cond_9

    invoke-virtual {v1, v0, p3}, Lmb/a0;->c(Lmb/x;I)Lmb/x;

    move-result-object p4

    invoke-virtual {v1, p4}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object v2

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    const/16 p1, 0xbd

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    add-int p4, p2, p3

    invoke-virtual {v1, v0, p4}, Lmb/a0;->c(Lmb/x;I)Lmb/x;

    move-result-object p4

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_a

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    const/16 p1, 0xc5

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    invoke-virtual {p0, p2}, Lmb/a7;->r2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    :goto_2
    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Lmb/a0;->c(Lmb/x;I)Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final Q(Lmb/z1;Lorg/codehaus/janino/util/t0;Z)Lorg/codehaus/janino/util/b0;
    .locals 3

    new-instance v0, Lg5/e;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p2, v2}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {p1, v0}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/janino/util/b0;

    if-eqz p3, :cond_0

    instance-of p1, p0, Lorg/codehaus/janino/util/i;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Lorg/codehaus/janino/util/b0;

    aput-object p0, p1, v2

    new-instance p0, Lorg/codehaus/janino/util/g;

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/g;-><init>([Lorg/codehaus/janino/util/b0;)V

    :cond_0
    return-object p0
.end method

.method public final Q1(SLmb/x;Lmb/x;[Lmb/x;)Lorg/codehaus/janino/util/t0;
    .locals 1

    new-instance v0, Lorg/codehaus/janino/util/t0;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p4}, Lmb/x;->q([Lmb/x;)[Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/codehaus/janino/util/t0;-><init>(SLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/a7;->V0()I

    move-result p0

    const/4 p1, 0x6

    if-lt p0, p1, :cond_1

    add-int/lit8 p0, p0, 0x2c

    int-to-short p0, p0

    iput-short p0, v0, Lorg/codehaus/janino/util/t0;->a:S

    const/4 p0, 0x0

    iput-short p0, v0, Lorg/codehaus/janino/util/t0;->b:S

    return-object v0

    :cond_1
    new-instance p1, Lhb/a;

    const-string p2, "Cannot generate version "

    const-string p3, " .class files"

    invoke-static {p0, p2, p3}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lhb/c;->o:Lhb/c;

    invoke-direct {p1, p2, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p1
.end method

.method public final R(Lhb/c;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lmb/a7;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmb/a7;->f:I

    new-instance p0, Lhb/a;

    invoke-direct {p0, p1, p2}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0
.end method

.method public final R0(Lhb/c;Ljava/lang/String;Lmb/a5;)Lmb/x;
    .locals 9

    invoke-static {p3, p2}, Lmb/a7;->z0(Lmb/a5;Ljava/lang/String;)Lmb/e3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p3

    :goto_0
    instance-of v1, v0, Lmb/q1;

    if-nez v1, :cond_2

    instance-of v1, v0, Lmb/v5;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lmb/m0;

    invoke-virtual {p0, v1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lmb/a7;->A0(Lmb/b0;Ljava/lang/String;Lhb/c;)Lmb/x;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lmb/a7;->l1(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p3

    :goto_1
    instance-of v1, v0, Lmb/q1;

    if-eqz v1, :cond_15

    check-cast v0, Lmb/q1;

    invoke-virtual {v0, p2}, Lmb/q1;->i(Ljava/lang/String;)Lmb/p4;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v0, v0, Lmb/q1;->c:Lmb/k4;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lmb/k4;->c:Ljava/lang/String;

    :goto_2
    if-nez v0, :cond_6

    move-object v0, p2

    goto :goto_3

    :cond_6
    const-string v2, "."

    invoke-static {v0, v2, p2}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, p1, v0}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lmb/a7;->o1(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lmb/a7;->l1(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p3}, Lmb/a7;->r1(Lmb/x;Lmb/a5;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9

    return-object v0

    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Member type \""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" is not accessible"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {p0, p2}, Lmb/a7;->k1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-class v2, Lmb/x;

    invoke-static {v0, v2}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v0

    move-object v3, v1

    :goto_4
    invoke-virtual {v0}, Lkb/c;->hasNext()Z

    move-result v4

    const-string v5, "\""

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/x;

    if-eqz v3, :cond_c

    if-ne v4, v3, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ambiguous static member type import: \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" vs. \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_5
    move-object v3, v4

    goto :goto_4

    :cond_d
    if-eqz v3, :cond_e

    return-object v3

    :cond_e
    invoke-virtual {p0, p2}, Lmb/a7;->n1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v2}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v0

    invoke-virtual {v0}, Lkb/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/x;

    return-object p0

    :cond_f
    invoke-virtual {p0, p1, p2}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    :goto_6
    instance-of v0, p3, Lmb/q1;

    if-nez v0, :cond_14

    instance-of v0, p3, Lmb/t0;

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    move-object v0, p3

    check-cast v0, Lmb/t0;

    iget-object v0, v0, Lmb/t0;->l:Lmb/s5;

    instance-of v2, v0, Lmb/v4;

    if-eqz v2, :cond_13

    check-cast v0, Lmb/v4;

    iget-object v0, v0, Lmb/v4;->f:[Lmb/t5;

    if-eqz v0, :cond_13

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_13

    aget-object v6, v0, v4

    instance-of v7, v6, Lmb/v4;

    if-eqz v7, :cond_12

    check-cast v6, Lmb/v4;

    iget-object v6, v6, Lmb/v4;->e:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    aget-object v6, v6, v3

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    iget-object p0, p0, Lmb/a0;->n:Lmb/x;

    return-object p0

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto :goto_6

    :cond_14
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot determine simple type name \""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final R1(Lmb/k3;Lmb/x;Lmb/w;)V
    .locals 0

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmb/a7;->j2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lhb/b;

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    const-string p2, "SNO: Conversion failed"

    invoke-direct {p0, p1, p2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0
.end method

.method public final S0(Lhb/c;Lmb/a5;[Ljava/lang/String;I)Lmb/b0;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_d

    const/4 p4, 0x0

    aget-object p3, p3, p4

    const-string v2, "var"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object v0, p2

    :goto_0
    instance-of v2, v0, Lmb/q1;

    iget-object v3, p0, Lmb/a7;->h:Lmb/b;

    if-nez v2, :cond_5

    instance-of v2, v0, Lmb/u3;

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    move-object v2, v0

    check-cast v2, Lmb/u3;

    iget-object v2, v2, Lmb/u3;->k:[Lmb/w5;

    if-eqz v2, :cond_4

    array-length v4, v2

    move v5, p4

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    iget-object v7, v6, Lmb/w5;->a:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object p1, v6, Lmb/w5;->b:[Lmb/v4;

    if-nez p1, :cond_1

    new-array p0, v1, [Lmb/b0;

    iget-object p1, v3, Lmb/a0;->n:Lmb/x;

    aput-object p1, p0, p4

    goto :goto_3

    :cond_1
    array-length p2, p1

    new-array p3, p2, [Lmb/b0;

    move v0, p4

    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object p0, p3

    :goto_3
    aget-object p0, p0, p4

    return-object p0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p2

    :goto_5
    instance-of v2, v0, Lmb/q1;

    if-nez v2, :cond_b

    instance-of v2, v0, Lmb/c4;

    if-nez v2, :cond_6

    goto :goto_9

    :cond_6
    move-object v2, v0

    check-cast v2, Lmb/c4;

    check-cast v2, Lmb/m0;

    iget-object v2, v2, Lmb/m0;->c:[Lmb/w5;

    if-eqz v2, :cond_a

    array-length v4, v2

    move v5, p4

    :goto_6
    if-ge v5, v4, :cond_a

    aget-object v6, v2, v5

    iget-object v7, v6, Lmb/w5;->a:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object p1, v6, Lmb/w5;->b:[Lmb/v4;

    if-nez p1, :cond_7

    new-array p0, v1, [Lmb/x;

    iget-object p1, v3, Lmb/a0;->n:Lmb/x;

    aput-object p1, p0, p4

    goto :goto_8

    :cond_7
    array-length p2, p1

    new-array p3, p2, [Lmb/x;

    move v0, p4

    :goto_7
    if-ge v0, p2, :cond_8

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    move-object p0, p3

    :goto_8
    aget-object p0, p0, p4

    return-object p0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_9
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_5

    :cond_b
    :try_start_0
    invoke-virtual {p0, p1, p3, p2}, Lmb/a7;->R0(Lhb/c;Ljava/lang/String;Lmb/a5;)Lmb/x;

    move-result-object p0
    :try_end_0
    .catch Lhb/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Lhb/a;

    invoke-virtual {p0}, Lhb/a;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1, p0}, Lhb/a;-><init>(Ljava/lang/String;Lhb/c;Ljava/lang/Exception;)V

    throw p2

    :cond_c
    const-string p2, "Local variable type inference NYI"

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v2, "."

    invoke-static {p4, v2, p3}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v2

    if-eqz v2, :cond_e

    return-object v2

    :cond_e
    const/4 v2, 0x2

    if-lt p4, v2, :cond_10

    sub-int/2addr p4, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Lmb/a7;->S0(Lhb/c;Lmb/a5;[Ljava/lang/String;I)Lmb/b0;

    move-result-object p2

    if-eqz p2, :cond_10

    aget-object p3, p3, p4

    invoke-virtual {p0, p2, p3, p1}, Lmb/a7;->A0(Lmb/b0;Ljava/lang/String;Lhb/c;)Lmb/x;

    move-result-object p4

    if-eqz p4, :cond_f

    return-object p4

    :cond_f
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" declares no member type \""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_10
    return-object v0
.end method

.method public final S1(Lmb/v;Lmb/x;)Z
    .locals 5

    invoke-virtual {p1}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1}, Lmb/t;->e()[Lmb/x;

    move-result-object v4

    invoke-virtual {v3}, Lmb/t;->e()[Lmb/x;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lmb/a7;->T1(Lmb/v;Lmb/x;)Z

    move-result p0

    return p0
.end method

.method public final T(Lmb/y4;)Lmb/b0;
    .locals 2

    new-instance v0, Lmb/t6;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/b0;

    return-object p0
.end method

.method public final T0(Lmb/r2;)Lmb/b0;
    .locals 1

    iget-object v0, p1, Lmb/r2;->j:Lmb/b0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lmb/r2;->e:Lmb/s5;

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    iput-object p0, p1, Lmb/r2;->j:Lmb/b0;

    return-object p0
.end method

.method public final T1(Lmb/v;Lmb/x;)Z
    .locals 5

    invoke-virtual {p2}, Lmb/x;->x()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->S1(Lmb/v;Lmb/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lmb/x;->t()[Lmb/x;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, p1, v4}, Lmb/a7;->S1(Lmb/v;Lmb/x;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v0, v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lmb/x;->G()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lmb/a7;->h:Lmb/b;

    iget-object p2, p2, Lmb/a0;->n:Lmb/x;

    invoke-virtual {p0, p1, p2}, Lmb/a7;->S1(Lmb/v;Lmb/x;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public final U(Lmb/h1;)Lmb/w;
    .locals 4

    new-instance v0, Lmb/d;

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lmb/k;-><init>(Lmb/n;)V

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    iget-object v1, v1, Lmb/n;->g:Lmb/h;

    iget-object v1, v1, Lmb/k;->d:Lmb/p6;

    iput-object v1, v0, Lmb/k;->d:Lmb/p6;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lmb/a7;->j0(Lmb/k3;I)V

    new-instance v2, Lmb/d;

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {p0, v2}, Lmb/a7;->d1(Lmb/k;)V

    invoke-virtual {v0}, Lmb/k;->b()V

    invoke-virtual {p0, p1, v1}, Lmb/a7;->j0(Lmb/k3;I)V

    invoke-virtual {v2}, Lmb/k;->a()V

    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0
.end method

.method public final U0(Lhb/c;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lmb/a7;->c:Ljava/util/HashMap;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmb/a7;->g:Lmb/k0;

    iget-object v1, v1, Lmb/k0;->b:[Lmb/f0;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    new-instance v6, Lc5/o;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v0}, Lc5/o;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lmb/f0;->x(Lmb/m7;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/h0;

    iget-object v5, v4, Lmb/h0;->c:[Ljava/lang/String;

    iget-object v4, v4, Lmb/m3;->a:Lhb/c;

    array-length v6, v5

    if-eqz v6, :cond_4

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v5, v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "."

    if-eqz v7, :cond_2

    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "Class \""

    const-string p2, "\" was previously imported as \""

    invoke-static {p1, v6, p2}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, v7

    invoke-static {p2, v9, v7}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\", now as \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v5

    invoke-static {p2, v9, v5}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v8

    :cond_2
    :goto_2
    invoke-virtual {p0, p1, v5}, Lmb/a7;->D0(Lhb/c;[Ljava/lang/String;)Lmb/x;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "A class \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v5

    invoke-static {p2, v9, v5}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" could not be found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v8

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SNO: Empty string array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iput-object v1, p0, Lmb/a7;->c:Ljava/util/HashMap;

    move-object v0, v1

    :cond_6
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final U1(Lmb/k3;Lmb/b0;)V
    .locals 1

    sget-object v0, Lmb/x;->v:Lmb/w;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    sget-object p1, Lmb/x;->B:Lmb/w;

    if-eq p2, p1, :cond_2

    sget-object p1, Lmb/x;->y:Lmb/w;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x57

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x58

    :goto_1
    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    check-cast p2, Lmb/x;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    invoke-virtual {p0}, Lmb/n;->i()V

    return-void
.end method

.method public final V(Lmb/y4;)Lmb/b0;
    .locals 4

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmb/a7;->q:Lmb/q;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lmb/a7;->u0(Lmb/y4;)V

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    invoke-virtual {p0, p1}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lmb/a7;->N(Lmb/y4;)I

    invoke-virtual {p0, p1}, Lmb/a7;->T(Lmb/y4;)Lmb/b0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lhb/b;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Compiling \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final V0()I
    .locals 2

    iget v0, p0, Lmb/a7;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lmb/a7;->n:I

    iput v0, p0, Lmb/a7;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lmb/a7;->b:I

    :cond_0
    iget p0, p0, Lmb/a7;->b:I

    return p0
.end method

.method public final V1(Lmb/m3;Lmb/s;)V
    .locals 4

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    invoke-virtual {p2}, Lmb/s;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb3

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xb5

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    :goto_0
    iget-object p1, p2, Lmb/s;->a:Lmb/x;

    invoke-virtual {p2}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmb/s;->e()Lmb/x;

    move-result-object p2

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    iget-object v1, v1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/codehaus/janino/util/o;

    invoke-virtual {v1, p1}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    new-instance v3, Lorg/codehaus/janino/util/u;

    invoke-virtual {v1, v0}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v1, p2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p2

    invoke-direct {v3, v0, p2}, Lorg/codehaus/janino/util/u;-><init>(SS)V

    invoke-virtual {v1, v3}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p2

    invoke-direct {v2, p1, p2}, Lorg/codehaus/janino/util/o;-><init>(SS)V

    invoke-virtual {v1, v2}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    return-void
.end method

.method public final W(Lmb/w0;Lmb/b0;)V
    .locals 3

    instance-of v0, p2, Lmb/x;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmb/x;->e()Lmb/x;

    move-result-object p2

    iget-object v0, p1, Lmb/w0;->c:[Lmb/x0;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lmb/a7;->P1(Lmb/m3;IILmb/b0;)Lmb/x;

    :goto_0
    iget-object v0, p1, Lmb/w0;->c:[Lmb/x0;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lmb/a7;->q0(Lmb/k3;)V

    invoke-virtual {p0, p1, v1}, Lmb/a7;->j0(Lmb/k3;I)V

    invoke-virtual {p0, v0, p2}, Lmb/a7;->A(Lmb/x0;Lmb/b0;)V

    invoke-virtual {p0, v0, p2}, Lmb/a7;->l(Lmb/x0;Lmb/b0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Array initializer not allowed for non-array type \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw p2
.end method

.method public final W0(Lmb/c1;)Lmb/b0;
    .locals 2

    new-instance v0, Lmb/t6;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/b0;

    return-object p0
.end method

.method public final W1(Lmb/p0;)Lmb/c1;
    .locals 4

    iget-object v0, p1, Lmb/p0;->i:Lmb/c1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object v1, p1, Lmb/y4;->c:Lmb/a5;

    iget-object v2, p1, Lmb/p0;->f:[Ljava/lang/String;

    iget v3, p1, Lmb/p0;->g:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lmb/a7;->X1(Lhb/c;Lmb/a5;[Ljava/lang/String;I)Lmb/c1;

    move-result-object p0

    iput-object p0, p1, Lmb/p0;->i:Lmb/c1;

    return-object p0
.end method

.method public final X(Lmb/n3;)V
    .locals 2

    new-instance v0, Lmb/t6;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    return-void
.end method

.method public final X0(Lmb/n3;)Lmb/b0;
    .locals 2

    new-instance v0, Lmb/t6;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/b0;

    return-object p0
.end method

.method public final X1(Lhb/c;Lmb/a5;[Ljava/lang/String;I)Lmb/c1;
    .locals 8

    const/16 v0, 0x2e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, v3, :cond_2a

    aget-object v4, p3, v1

    move-object p3, p2

    :goto_0
    instance-of p4, p3, Lmb/f1;

    if-nez p4, :cond_0

    instance-of p4, p3, Lmb/l1;

    if-eqz p4, :cond_1

    :cond_0
    instance-of p4, p3, Lmb/u5;

    if-nez p4, :cond_1

    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto :goto_0

    :cond_1
    instance-of p4, p3, Lmb/u5;

    if-eqz p4, :cond_2

    move-object p4, p3

    check-cast p4, Lmb/u5;

    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    move-object v5, p4

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    instance-of p4, p3, Lmb/v5;

    if-eqz p4, :cond_3

    move-object p4, p3

    check-cast p4, Lmb/m0;

    check-cast p3, Lmb/m0;

    iget-object p3, p3, Lmb/m0;->f:Lmb/a5;

    move-object v6, p4

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    instance-of p4, p3, Lmb/q1;

    if-nez p4, :cond_4

    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto :goto_2

    :cond_4
    move-object v7, p3

    check-cast v7, Lmb/q1;

    instance-of p3, p2, Lmb/f1;

    if-eqz p3, :cond_6

    move-object p3, p2

    check-cast p3, Lmb/f1;

    invoke-interface {p3, v4}, Lmb/f1;->m(Ljava/lang/String;)Lmb/g3;

    move-result-object p4

    if-eqz p4, :cond_5

    new-instance p0, Lmb/h3;

    invoke-direct {p0, p1, p4}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    invoke-virtual {p0, p3}, Lmb/y4;->a(Lmb/a5;)V

    return-object p0

    :cond_5
    invoke-interface {p2}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto :goto_3

    :cond_6
    move-object p3, p2

    :goto_3
    instance-of p4, p3, Lmb/f1;

    if-nez p4, :cond_29

    instance-of p4, p3, Lmb/l1;

    if-eqz p4, :cond_7

    goto/16 :goto_b

    :cond_7
    instance-of p4, p3, Lmb/r2;

    if-eqz p4, :cond_8

    check-cast p3, Lmb/r2;

    iget-object p3, p3, Lmb/l0;->c:Lmb/v5;

    :cond_8
    instance-of p4, p3, Lmb/v2;

    if-eqz p4, :cond_10

    move-object p4, p3

    check-cast p4, Lmb/v2;

    check-cast p3, Lmb/m0;

    iget-object p3, p3, Lmb/m0;->f:Lmb/a5;

    instance-of v1, p3, Lmb/t0;

    if-eqz v1, :cond_9

    check-cast p3, Lmb/m0;

    iget-object p3, p3, Lmb/m0;->f:Lmb/a5;

    goto :goto_4

    :cond_9
    instance-of v1, p3, Lmb/k2;

    if-eqz v1, :cond_a

    check-cast p3, Lmb/e5;

    iget-object p3, p3, Lmb/e5;->c:Lmb/a5;

    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    :cond_a
    :goto_4
    instance-of v1, p3, Lmb/f1;

    if-eqz v1, :cond_10

    move-object v1, p3

    check-cast v1, Lmb/f1;

    invoke-interface {v1, v4}, Lmb/f1;->m(Ljava/lang/String;)Lmb/g3;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-boolean p3, v1, Lmb/g3;->a:Z

    if-eqz p3, :cond_b

    iget-object p3, v1, Lmb/g3;->b:Lmb/b0;

    new-instance v0, Lmb/g6;

    invoke-virtual {p0, p4}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v1

    const-string v2, "val$"

    invoke-static {v2, v4}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast p3, Lmb/x;

    invoke-direct {v0, v1, v2, p3}, Lmb/g6;-><init>(Lmb/x;Ljava/lang/String;Lmb/x;)V

    move-object p3, p4

    check-cast p3, Lmb/e0;

    invoke-virtual {p3, v0}, Lmb/e0;->z(Lmb/g6;)V

    new-instance p3, Lmb/i2;

    new-instance v1, Lmb/u4;

    new-instance v2, Lmb/c5;

    invoke-virtual {p0, p4}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v1, p1, v2}, Lmb/u4;-><init>(Lhb/c;Lmb/s5;)V

    invoke-direct {p3, p1, v1, v0}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    invoke-virtual {p3, p2}, Lmb/y4;->a(Lmb/a5;)V

    return-object p3

    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot access non-final local variable \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" from inner class"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    :goto_5
    instance-of p4, p3, Lmb/f1;

    if-eqz p4, :cond_d

    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto :goto_5

    :cond_d
    instance-of p4, p3, Lmb/r2;

    if-nez p4, :cond_e

    goto :goto_6

    :cond_e
    check-cast p3, Lmb/r2;

    iget-object p3, p3, Lmb/l0;->c:Lmb/v5;

    instance-of p4, p3, Lmb/v2;

    if-nez p4, :cond_f

    goto :goto_6

    :cond_f
    move-object p4, p3

    check-cast p4, Lmb/v2;

    check-cast p3, Lmb/m0;

    iget-object p3, p3, Lmb/m0;->f:Lmb/a5;

    goto :goto_4

    :cond_10
    :goto_6
    move-object p3, p2

    :goto_7
    instance-of p4, p3, Lmb/q1;

    if-nez p4, :cond_18

    instance-of p4, p3, Lmb/f1;

    if-eqz p4, :cond_11

    if-nez v2, :cond_11

    move-object p4, p3

    check-cast p4, Lmb/f1;

    move-object v2, p4

    :cond_11
    instance-of p4, p3, Lmb/v5;

    if-eqz p4, :cond_17

    move-object p4, p3

    check-cast p4, Lmb/m0;

    invoke-virtual {p0, p4}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p4

    invoke-static {p4, v4, p1}, Lmb/a7;->v0(Lmb/x;Ljava/lang/String;Lhb/c;)Lmb/s;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object p0, v1, Lmb/s;->a:Lmb/x;

    invoke-virtual {v1}, Lmb/s;->f()Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Lmb/s;->d()Ljava/lang/String;

    goto :goto_8

    :cond_12
    if-ne p0, p4, :cond_13

    invoke-virtual {v1}, Lmb/s;->d()Ljava/lang/String;

    goto :goto_8

    :cond_13
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Lmb/s;->d()Ljava/lang/String;

    :goto_8
    new-instance p0, Lmb/c5;

    iget-object p3, v6, Lmb/m0;->a:Lhb/c;

    invoke-direct {p0, p3, p4}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    if-nez v5, :cond_14

    goto :goto_9

    :cond_14
    instance-of p3, v5, Lmb/u3;

    if-eqz p3, :cond_15

    check-cast v5, Lmb/u3;

    invoke-virtual {v5}, Lmb/u3;->z()Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {v1}, Lmb/s;->f()Z

    move-result p3

    if-eqz p3, :cond_16

    goto :goto_9

    :cond_16
    new-instance p3, Lmb/u4;

    invoke-direct {p3, p1, p0}, Lmb/u4;-><init>(Lhb/c;Lmb/s5;)V

    move-object p0, p3

    :goto_9
    new-instance p3, Lmb/i2;

    invoke-direct {p3, p1, p0, v1}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    invoke-virtual {p3, p2}, Lmb/y4;->a(Lmb/a5;)V

    return-object p3

    :cond_17
    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto :goto_7

    :cond_18
    invoke-virtual {p0, v4}, Lmb/a7;->k1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-class p4, Lmb/s;

    invoke-static {p3, p4}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object p3

    :cond_19
    invoke-virtual {p3}, Lkb/c;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p3}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/s;

    invoke-virtual {p0, v1, p2}, Lmb/a7;->v1(Lmb/u;Lmb/a5;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance p0, Lmb/i2;

    new-instance p3, Lmb/c5;

    iget-object p4, v1, Lmb/s;->a:Lmb/x;

    invoke-direct {p3, p1, p4}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {p0, p1, p3, v1}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    invoke-virtual {p0, p2}, Lmb/y4;->a(Lmb/a5;)V

    return-object p0

    :cond_1a
    invoke-virtual {p0, v4}, Lmb/a7;->n1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-static {p3, p4}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object p3

    :cond_1b
    invoke-virtual {p3}, Lkb/c;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1c

    invoke-virtual {p3}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmb/s;

    invoke-virtual {p0, p4, p2}, Lmb/a7;->v1(Lmb/u;Lmb/a5;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance p0, Lmb/i2;

    new-instance p3, Lmb/c5;

    iget-object v0, p4, Lmb/s;->a:Lmb/x;

    invoke-direct {p3, p1, v0}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {p0, p1, p3, p4}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    invoke-virtual {p0, p2}, Lmb/y4;->a(Lmb/a5;)V

    return-object p0

    :cond_1c
    const-string p3, "java"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1d

    new-instance p0, Lmb/j4;

    invoke-direct {p0, p1, v4}, Lmb/j4;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0

    :cond_1d
    invoke-virtual {p0, p1, v4}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object p3

    if-eqz p3, :cond_1e

    new-instance p0, Lmb/c5;

    invoke-direct {p0, p1, p3}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_1e
    invoke-static {p2, v4}, Lmb/a7;->z0(Lmb/a5;Ljava/lang/String;)Lmb/e3;

    move-result-object p3

    if-eqz p3, :cond_1f

    new-instance p2, Lmb/c5;

    invoke-virtual {p0, p3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p2

    :cond_1f
    if-eqz v6, :cond_20

    invoke-virtual {p0, v6}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p3

    invoke-virtual {p0, p3, v4, p1}, Lmb/a7;->A0(Lmb/b0;Ljava/lang/String;Lhb/c;)Lmb/x;

    move-result-object p3

    if-eqz p3, :cond_20

    new-instance p0, Lmb/c5;

    invoke-direct {p0, p1, p3}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_20
    invoke-virtual {p0, p1, v4}, Lmb/a7;->l1(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object p3

    if-eqz p3, :cond_21

    new-instance p0, Lmb/c5;

    invoke-direct {p0, p1, p3}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_21
    invoke-virtual {v7, v4}, Lmb/q1;->i(Ljava/lang/String;)Lmb/p4;

    move-result-object p3

    if-eqz p3, :cond_22

    new-instance p2, Lmb/c5;

    invoke-virtual {p0, p3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p2

    :cond_22
    iget-object p3, v7, Lmb/q1;->c:Lmb/k4;

    if-nez p3, :cond_23

    move-object p3, v4

    goto :goto_a

    :cond_23
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lmb/k4;->c:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_a
    invoke-virtual {p0, p1, p3}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object p3

    if-eqz p3, :cond_24

    new-instance p0, Lmb/c5;

    invoke-direct {p0, p1, p3}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_24
    invoke-virtual {p0, p1, v4}, Lmb/a7;->o1(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object p3

    if-eqz p3, :cond_25

    new-instance p0, Lmb/c5;

    invoke-direct {p0, p1, p3}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_25
    invoke-virtual {p0, v4}, Lmb/a7;->k1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-class p4, Lmb/x;

    invoke-static {p3, p4}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object p3

    invoke-virtual {p3}, Lkb/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance p0, Lmb/c5;

    invoke-virtual {p3}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmb/x;

    invoke-direct {p0, p1, p2}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_26
    invoke-virtual {p0, v4}, Lmb/a7;->n1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-static {p3, p4}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object p3

    :cond_27
    invoke-virtual {p3}, Lkb/c;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_28

    invoke-virtual {p3}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmb/x;

    invoke-virtual {p0, p4, p2}, Lmb/a7;->r1(Lmb/x;Lmb/a5;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance p0, Lmb/c5;

    invoke-direct {p0, p1, p4}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_28
    new-instance p0, Lmb/j4;

    invoke-direct {p0, p1, v4}, Lmb/j4;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0

    :cond_29
    :goto_b
    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto/16 :goto_3

    :cond_2a
    sub-int/2addr p4, v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lmb/a7;->X1(Lhb/c;Lmb/a5;[Ljava/lang/String;I)Lmb/c1;

    move-result-object v4

    aget-object p3, p3, p4

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "lhs={0}"

    sget-object v6, Lmb/a7;->m:Ljava/util/logging/Logger;

    invoke-virtual {v6, p4, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p4, v4, Lmb/j4;

    if-eqz p4, :cond_2c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v4, Lmb/j4;

    iget-object p4, v4, Lmb/j4;->c:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object p0

    if-eqz p0, :cond_2b

    new-instance p2, Lmb/c5;

    invoke-direct {p2, p1, p0}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p2

    :cond_2b
    new-instance p0, Lmb/j4;

    invoke-direct {p0, p1, p2}, Lmb/j4;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object p0

    :cond_2c
    const-string p4, "length"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2e

    invoke-virtual {p0, v4}, Lmb/a7;->W0(Lmb/c1;)Lmb/b0;

    move-result-object p4

    check-cast p4, Lmb/x;

    invoke-virtual {p4}, Lmb/x;->C()Z

    move-result p4

    if-eqz p4, :cond_2e

    new-instance p3, Lmb/y0;

    invoke-virtual {p0, v4}, Lmb/a7;->g2(Lmb/c1;)Lmb/y4;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lmb/y0;-><init>(Lhb/c;Lmb/y4;)V

    instance-of p1, p2, Lmb/f1;

    if-eqz p1, :cond_2d

    invoke-virtual {p3, p2}, Lmb/y4;->a(Lmb/a5;)V

    return-object p3

    :cond_2d
    const-string p1, "\".length\" only allowed in expression context"

    invoke-virtual {p0, v2, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2

    :cond_2e
    invoke-virtual {p0, v4}, Lmb/a7;->W0(Lmb/c1;)Lmb/b0;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lmb/x;

    invoke-static {v0, p3, p1}, Lmb/a7;->v0(Lmb/x;Ljava/lang/String;Lhb/c;)Lmb/s;

    move-result-object v5

    if-eqz v5, :cond_2f

    new-instance p0, Lmb/i2;

    invoke-direct {p0, p1, v4, v5}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    invoke-virtual {p0, p2}, Lmb/y4;->a(Lmb/a5;)V

    return-object p0

    :cond_2f
    iget-object p2, v0, Lmb/x;->f:[Lmb/x;

    if-eqz p2, :cond_30

    goto :goto_c

    :cond_30
    invoke-virtual {v0}, Lmb/x;->g()[Lmb/x;

    move-result-object p2

    iput-object p2, v0, Lmb/x;->f:[Lmb/x;

    :goto_c
    array-length v0, p2

    :goto_d
    if-ge v1, v0, :cond_32

    aget-object v4, p2, v1

    invoke-virtual {v4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmb/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    new-instance p0, Lmb/c5;

    invoke-direct {p0, p1, v4}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    return-object p0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_32
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" is neither a method, a field, nor a member class of \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2
.end method

.method public final Y(Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/f1;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lmb/a7;->G0(Lmb/f1;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast v1, Lmb/m3;

    iget-object p1, v1, Lmb/m3;->a:Lhb/c;

    const-string v0, "Statement is unreachable"

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lhb/b;

    check-cast v1, Lmb/m3;

    iget-object v0, v1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p1, v0, v2, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    check-cast v1, Lmb/m3;

    iget-object v0, v1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0}, Lhb/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return v0
.end method

.method public final Y0(Lmb/y4;)Lmb/b0;
    .locals 2

    new-instance v0, Lmb/t6;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/b0;

    return-object p0
.end method

.method public final Y1(Lmb/y4;Lmb/m0;Lmb/u5;Lmb/b0;)V
    .locals 11

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lmb/a7;->Q0(Lmb/v5;)Lmb/m0;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lmb/a7;->C1(Lmb/u5;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmb/v5;

    invoke-virtual {p0, v5}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v5

    move-object v6, p4

    check-cast v6, Lmb/x;

    invoke-virtual {v6, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of p4, p3, Lmb/s1;

    const-string v3, "this$"

    if-eqz p4, :cond_3

    if-nez v4, :cond_1

    invoke-virtual {p0, p2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    return-void

    :cond_1
    check-cast p3, Lmb/s1;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lmb/s1;->m:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmb/g3;

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p3}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Lhb/b;

    const-string p1, "SNO: Synthetic parameter \""

    const-string p3, "\" not found"

    invoke-static {p1, p2, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0, p2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    :goto_2
    if-ge v2, v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmb/v2;

    add-int/lit8 p3, v2, 0x1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmb/v5;

    new-instance v0, Lmb/g6;

    invoke-virtual {p0, p2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p4}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p4

    invoke-direct {v0, v7, v2, p4}, Lmb/g6;-><init>(Lmb/x;Ljava/lang/String;Lmb/x;)V

    check-cast p2, Lmb/e0;

    invoke-virtual {p2, v0}, Lmb/e0;->z(Lmb/g6;)V

    invoke-virtual {v0}, Lmb/g6;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lmb/g6;->e()Lmb/x;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lmb/a7;->c1(Lmb/k3;Lmb/x;Ljava/lang/String;Lmb/x;Z)V

    move v2, p3

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move-object v5, p0

    move-object v6, p1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_6
    move-object v5, p0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" is not enclosed by \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v0, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_7
    move-object v5, p0

    const-string p0, "No current instance available in static context"

    invoke-virtual {v5, v0, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3
.end method

.method public final Z(Lmb/y4;Lmb/b0;Lmb/y4;Ljava/util/Iterator;)Lmb/x;
    .locals 9

    invoke-virtual {p0, p1, p2}, Lmb/a7;->c2(Lmb/y4;Lmb/b0;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    invoke-virtual {p0, p3}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lmb/a7;->q:Lmb/q;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lmb/y4;

    :cond_0
    move-object p3, v3

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmb/y4;

    invoke-virtual {p0, p3}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v5, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmb/y4;

    invoke-virtual {p0, p3}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_3

    move-object v3, p3

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move-object v3, p3

    :cond_5
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmb/a7;->K1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v1, p3

    :goto_4
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    new-instance v4, Lmb/b5;

    iget-object v5, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {v4, v5, v2}, Lmb/b5;-><init>(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x2

    iget-object v1, p0, Lmb/a7;->h:Lmb/b;

    if-gt p3, p4, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_5
    if-ge v0, p3, :cond_7

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 v0, v0, 0x1

    check-cast p4, Lmb/y4;

    invoke-virtual {p0, p4}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Lmb/a7;->c2(Lmb/y4;Lmb/b0;)V

    iget-object p4, v1, Lmb/a0;->z:Lmb/v;

    invoke-virtual {p0, p1, p4}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    goto :goto_5

    :cond_7
    iget-object p0, v1, Lmb/a0;->r:Lmb/x;

    return-object p0

    :cond_8
    iget-object p3, v1, Lmb/a0;->s:Lmb/x;

    invoke-virtual {p0, p1, p3}, Lmb/a7;->O1(Lmb/k3;Lmb/b0;)V

    invoke-virtual {p0, p1}, Lmb/a7;->s0(Lmb/y4;)V

    iget-object p3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p3}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object p3

    iget-object p4, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p4}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object p4

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Lmb/a7;->q2(I)V

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2, p3}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p3, p4}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p3, v1, Lmb/a0;->U:Lmb/f6;

    iget-object v5, p3, Lmb/t;->e:Lmb/x;

    invoke-virtual {p3}, Lmb/t;->c()Lmb/c6;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v4, 0xb7

    const-string v6, "<init>"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lmb/a7;->s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V

    iget-object p0, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, v2, Lmb/a7;->e:Lmb/n;

    const-string p1, "Ljava/lang/StringBuilder;"

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_6
    if-ge v0, p0, :cond_11

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    check-cast p1, Lmb/y4;

    invoke-virtual {v2, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object p1

    sget-object p3, Lmb/x;->w:Lmb/w;

    if-ne p1, p3, :cond_9

    iget-object p1, v1, Lmb/a0;->J:Lmb/v;

    goto :goto_7

    :cond_9
    sget-object p3, Lmb/x;->C:Lmb/w;

    if-ne p1, p3, :cond_a

    iget-object p1, v1, Lmb/a0;->J:Lmb/v;

    goto :goto_7

    :cond_a
    sget-object p3, Lmb/x;->A:Lmb/w;

    if-ne p1, p3, :cond_b

    iget-object p1, v1, Lmb/a0;->J:Lmb/v;

    goto :goto_7

    :cond_b
    sget-object p3, Lmb/x;->B:Lmb/w;

    if-ne p1, p3, :cond_c

    iget-object p1, v1, Lmb/a0;->K:Lmb/v;

    goto :goto_7

    :cond_c
    sget-object p3, Lmb/x;->z:Lmb/w;

    if-ne p1, p3, :cond_d

    iget-object p1, v1, Lmb/a0;->L:Lmb/v;

    goto :goto_7

    :cond_d
    sget-object p3, Lmb/x;->y:Lmb/w;

    if-ne p1, p3, :cond_e

    iget-object p1, v1, Lmb/a0;->M:Lmb/v;

    goto :goto_7

    :cond_e
    sget-object p3, Lmb/x;->x:Lmb/w;

    if-ne p1, p3, :cond_f

    iget-object p1, v1, Lmb/a0;->N:Lmb/v;

    goto :goto_7

    :cond_f
    sget-object p3, Lmb/x;->D:Lmb/w;

    if-ne p1, p3, :cond_10

    iget-object p1, v1, Lmb/a0;->O:Lmb/v;

    goto :goto_7

    :cond_10
    iget-object p1, v1, Lmb/a0;->P:Lmb/v;

    :goto_7
    invoke-virtual {v2, v3, p1}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    goto :goto_6

    :cond_11
    iget-object p0, v1, Lmb/a0;->Q:Lmb/v;

    invoke-virtual {v2, v3, p0}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    iget-object p0, v1, Lmb/a0;->r:Lmb/x;

    return-object p0
.end method

.method public final Z0(Lmb/s5;)Lmb/b0;
    .locals 2

    new-instance v0, Lmb/t6;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {p1, v0}, Lmb/s5;->E(Lmb/u7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/b0;

    return-object p0
.end method

.method public final Z1(Lmb/v5;)Lmb/x;
    .locals 2

    move-object v0, p1

    check-cast v0, Lmb/m0;

    iget-object v1, v0, Lmb/m0;->g:Lmb/x6;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lmb/x6;

    invoke-direct {v1, p0, v0, p1}, Lmb/x6;-><init>(Lmb/a7;Lmb/m0;Lmb/v5;)V

    iput-object v1, v0, Lmb/m0;->g:Lmb/x6;

    return-object v1
.end method

.method public final a0(Lmb/r5;Lmb/y6;Lmb/k;Lmb/d;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lmb/r5;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmb/l1;

    iput-boolean v8, v6, Lmb/l1;->f:Z

    iget-object v9, v6, Lmb/l1;->c:Lmb/m1;

    iget-object v9, v9, Lmb/m1;->d:[Lmb/s5;

    array-length v10, v9

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    invoke-virtual {v1, v12}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v12

    iget-boolean v13, v6, Lmb/l1;->f:Z

    iget-object v14, v1, Lmb/a7;->h:Lmb/b;

    iget-object v15, v14, Lmb/a0;->i:Lmb/x;

    check-cast v12, Lmb/x;

    invoke-virtual {v15, v12}, Lmb/x;->D(Lmb/x;)Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v15, v14, Lmb/a0;->i:Lmb/x;

    invoke-virtual {v12, v15}, Lmb/x;->D(Lmb/x;)Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v15, v14, Lmb/a0;->p:Lmb/x;

    invoke-virtual {v15, v12}, Lmb/x;->D(Lmb/x;)Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v14, v14, Lmb/a0;->p:Lmb/x;

    invoke-virtual {v12, v14}, Lmb/x;->D(Lmb/x;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    move v12, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v12, v7

    :goto_2
    or-int/2addr v12, v13

    iput-boolean v12, v6, Lmb/l1;->f:Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lmb/a7;->e:Lmb/n;

    iget-object v5, v5, Lmb/n;->g:Lmb/h;

    iget-object v5, v5, Lmb/k;->d:Lmb/p6;

    invoke-interface/range {p2 .. p2}, Lmb/y6;->b()Z

    move-result v6

    iget-object v9, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v9}, Lmb/n;->f()Lmb/k;

    move-result-object v9

    iget-object v10, v1, Lmb/a7;->e:Lmb/n;

    iget-object v10, v10, Lmb/n;->g:Lmb/h;

    iget-object v10, v10, Lmb/k;->d:Lmb/p6;

    if-eqz v6, :cond_4

    invoke-virtual {v1, v3}, Lmb/a7;->d1(Lmb/k;)V

    :cond_4
    iget v11, v2, Lmb/k;->a:I

    iget v12, v9, Lmb/k;->a:I

    if-eq v11, v12, :cond_a

    move v11, v8

    move v12, v11

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_9

    iget-object v13, v1, Lmb/a7;->e:Lmb/n;

    iget-object v14, v13, Lmb/n;->g:Lmb/h;

    iput-object v5, v14, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v13}, Lmb/n;->q()V

    :try_start_0
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmb/l1;

    iget-object v14, v13, Lmb/l1;->c:Lmb/m1;

    iget-object v15, v14, Lmb/m1;->d:[Lmb/s5;

    move/from16 v16, v8

    array-length v8, v15

    if-ne v8, v7, :cond_8

    aget-object v8, v15, v16

    invoke-virtual {v1, v8}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v8

    check-cast v8, Lmb/x;

    iget-boolean v15, v13, Lmb/l1;->f:Z

    if-eqz v15, :cond_7

    iget-object v15, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v8}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lmb/n;->l(Ljava/lang/String;)V

    iget-object v7, v14, Lmb/m1;->e:Ljava/lang/String;

    invoke-virtual {v1, v8, v7}, Lmb/a7;->h(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v7

    invoke-virtual {v1, v14}, Lmb/a7;->M0(Lmb/m1;)Lmb/g3;

    move-result-object v14

    iput-object v7, v14, Lmb/g3;->c:Lmb/j3;

    iget-object v14, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v14}, Lmb/n;->d()Lmb/d;

    move-result-object v15

    move-object/from16 v17, v4

    invoke-virtual {v8}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v9, v15, v4}, Lmb/n;->a(Lmb/k;Lmb/k;Lmb/d;Ljava/lang/String;)V

    iget-short v4, v7, Lmb/j3;->a:S

    invoke-virtual {v1, v13, v8, v4}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    iget-object v4, v13, Lmb/l1;->d:Lmb/f1;

    invoke-virtual {v1, v4}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lmb/r5;->h:Lmb/e1;

    if-eqz v4, :cond_5

    invoke-virtual {v1, v4}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual {v1, v3}, Lmb/a7;->d1(Lmb/k;)V

    invoke-virtual {v3}, Lmb/k;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x1

    :cond_6
    iget-object v4, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v4}, Lmb/n;->p()V

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    move-object/from16 v4, v17

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    :try_start_1
    const-string v0, "Catch clause is unreachable"

    iget-object v2, v13, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v1, v2, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_8
    const-string v0, "Multi-type CATCH parameter NYI"

    invoke-static {v13, v0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    iget-object v1, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->p()V

    throw v0

    :cond_9
    move v8, v12

    goto :goto_6

    :cond_a
    move/from16 v16, v8

    :goto_6
    iget-object v0, v1, Lmb/a7;->e:Lmb/n;

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iput-object v10, v0, Lmb/k;->d:Lmb/p6;

    or-int v0, v6, v8

    return v0
.end method

.method public final a1(Lmb/r1;)Lmb/b0;
    .locals 9

    iget-object v0, p1, Lmb/r1;->g:Lmb/y4;

    invoke-virtual {p0, v0}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v1

    iget-object v2, p1, Lmb/r1;->h:Lmb/y4;

    invoke-virtual {p0, v2}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v3

    if-ne v1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v4

    if-ne v4, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v3}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v4

    if-ne v4, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v3

    check-cast v4, Lmb/x;

    invoke-virtual {v4}, Lmb/x;->H()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, v0}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object p0

    return-object p0

    :cond_4
    move-object v4, v1

    check-cast v4, Lmb/x;

    invoke-virtual {v4}, Lmb/x;->H()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v2}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v2}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v1}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0, v1}, Lmb/a7;->y1(Lmb/b0;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0, v3}, Lmb/a7;->y1(Lmb/b0;)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v4, Lmb/x;->w:Lmb/w;

    iget-object v5, p0, Lmb/a7;->h:Lmb/b;

    if-eq v1, v4, :cond_7

    iget-object v6, v5, Lmb/a0;->d:Lmb/x;

    if-ne v1, v6, :cond_8

    :cond_7
    sget-object v6, Lmb/x;->C:Lmb/w;

    if-eq v3, v6, :cond_13

    iget-object v7, v5, Lmb/a0;->q:Lmb/x;

    if-ne v3, v7, :cond_8

    goto/16 :goto_1

    :cond_8
    if-eq v3, v4, :cond_9

    iget-object v6, v5, Lmb/a0;->d:Lmb/x;

    if-ne v3, v6, :cond_a

    :cond_9
    sget-object v6, Lmb/x;->C:Lmb/w;

    if-eq v1, v6, :cond_13

    iget-object v5, v5, Lmb/a0;->q:Lmb/x;

    if-ne v1, v5, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, v2}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v4, :cond_b

    sget-object v6, Lmb/x;->C:Lmb/w;

    if-eq v1, v6, :cond_b

    sget-object v6, Lmb/x;->x:Lmb/w;

    if-ne v1, v6, :cond_c

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {p0, v2, v5, v1}, Lmb/a7;->m0(Lmb/k3;Ljava/lang/Object;Lmb/b0;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c

    :goto_0
    return-object v1

    :cond_c
    invoke-virtual {p0, v0}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v6

    if-eq v3, v4, :cond_d

    sget-object v7, Lmb/x;->C:Lmb/w;

    if-eq v3, v7, :cond_d

    sget-object v7, Lmb/x;->x:Lmb/w;

    if-ne v3, v7, :cond_e

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {p0, v0, v6, v3}, Lmb/a7;->m0(Lmb/k3;Ljava/lang/Object;Lmb/b0;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_e

    goto/16 :goto_3

    :cond_e
    sget-object v7, Lmb/x;->A:Lmb/w;

    if-ne v1, v7, :cond_f

    if-ne v3, v4, :cond_f

    invoke-static {v6}, Lmb/a7;->x1(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-static {v6}, Lmb/a7;->x1(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    iput-object p0, v0, Lmb/y4;->d:Ljava/lang/Object;

    return-object v4

    :cond_f
    if-ne v3, v7, :cond_10

    if-ne v1, v4, :cond_10

    invoke-static {v5}, Lmb/a7;->x1(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v5}, Lmb/a7;->x1(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    iput-object p0, v2, Lmb/y4;->d:Ljava/lang/Object;

    return-object v4

    :cond_10
    invoke-virtual {p0, v1}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object v1, v0

    :cond_11
    invoke-virtual {p0, v3}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object v3, v0

    :cond_12
    invoke-virtual {p0, p1, v1, v3}, Lmb/a7;->p(Lmb/y4;Lmb/b0;Lmb/b0;)Lmb/w;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_1
    return-object v6

    :cond_14
    invoke-virtual {v4}, Lmb/x;->H()Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v3

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->H()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible expression types \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" and \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_16
    :goto_2
    move-object p1, v3

    check-cast p1, Lmb/x;

    invoke-virtual {p1, v4}, Lmb/x;->D(Lmb/x;)Z

    move-result p1

    if-eqz p1, :cond_17

    :goto_3
    return-object v3

    :cond_17
    invoke-virtual {p0, v1, v3}, Lmb/a7;->z(Lmb/b0;Lmb/b0;)Lmb/b0;

    move-result-object p0

    return-object p0
.end method

.method public final a2(Lmb/w1;Lmb/w;Lmb/b0;)V
    .locals 2

    invoke-virtual {p0, p3}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lmb/a7;->i2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0, p3}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lhb/b;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    const-string p2, "SNO: reverse unary numeric promotion failed"

    invoke-direct {p0, p1, p2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0
.end method

.method public final b0(Lmb/r5;Lmb/y6;Lmb/e5;)Z
    .locals 6

    iget-object v0, p0, Lmb/a7;->h:Lmb/b;

    if-nez p3, :cond_0

    iget-object p3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p3}, Lmb/n;->f()Lmb/k;

    move-result-object p3

    new-instance v0, Lmb/d;

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lmb/a7;->a0(Lmb/r5;Lmb/y6;Lmb/k;Lmb/d;)Z

    move-result p0

    invoke-virtual {v0}, Lmb/k;->a()V

    return p0

    :cond_0
    new-instance v1, Lmb/d;

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v2}, Lmb/k;-><init>(Lmb/n;)V

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/n;->q()V

    :try_start_0
    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    iget-object v3, v2, Lmb/n;->g:Lmb/h;

    iget-object v3, v3, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v2}, Lmb/n;->f()Lmb/k;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2, v1}, Lmb/a7;->a0(Lmb/r5;Lmb/y6;Lmb/k;Lmb/d;)Z

    move-result p1

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    iget-object v4, p2, Lmb/n;->g:Lmb/h;

    iget-object v4, v4, Lmb/k;->d:Lmb/p6;

    invoke-virtual {p2}, Lmb/n;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    iget-object v5, p2, Lmb/n;->g:Lmb/h;

    iput-object v3, v5, Lmb/k;->d:Lmb/p6;

    const-string v3, "Ljava/lang/Throwable;"

    invoke-virtual {p2, v3}, Lmb/n;->l(Ljava/lang/String;)V

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p2}, Lmb/n;->d()Lmb/d;

    move-result-object p2

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, p2, p2, v5}, Lmb/n;->a(Lmb/k;Lmb/k;Lmb/d;Ljava/lang/String;)V

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    const/4 v2, 0x1

    invoke-virtual {p2, v5, v5, v2}, Lmb/n;->b(Ljava/lang/String;Lmb/b0;S)Lmb/j3;

    move-result-object p2

    iget-short p2, p2, Lmb/j3;->a:S

    iget-object v2, v0, Lmb/a0;->u:Lmb/x;

    invoke-virtual {p0, p3, v2, p2}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    invoke-virtual {p0, p3}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lmb/a0;->u:Lmb/x;

    invoke-virtual {p0, p3, v0, p2}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    invoke-virtual {p0, p3}, Lmb/a7;->o(Lmb/k3;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    iget-object v0, p2, Lmb/n;->g:Lmb/h;

    iput-object v4, v0, Lmb/k;->d:Lmb/p6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lmb/n;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p2}, Lmb/n;->p()V

    invoke-virtual {v1}, Lmb/k;->a()V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p3}, Lmb/a7;->E(Lmb/f1;)Z

    move-result p0

    return p0

    :cond_2
    return p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p2}, Lmb/n;->p()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    throw p1
.end method

.method public final b1(Lmb/j1;)Lmb/k;
    .locals 2

    iget-object v0, p1, Lmb/j1;->e:Lmb/d;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->g:Lmb/h;

    iget-object p1, p1, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v0}, Lmb/k;->c()V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iput-object p1, p0, Lmb/k;->d:Lmb/p6;

    return-object v0

    :cond_0
    new-instance v0, Lmb/d;

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lmb/k;-><init>(Lmb/n;)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iget-object p0, p0, Lmb/k;->d:Lmb/p6;

    iput-object p0, v0, Lmb/k;->d:Lmb/p6;

    iput-object v0, p1, Lmb/j1;->e:Lmb/d;

    return-object v0
.end method

.method public final b2(Lmb/k3;Lmb/b0;S)V
    .locals 4

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/4 p1, 0x3

    if-gt p3, p1, :cond_0

    invoke-static {p2}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x3b

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    if-gt p3, p1, :cond_1

    invoke-static {p2}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x36

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    invoke-virtual {p0, p3}, Lmb/a7;->q2(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc4

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    invoke-static {p2}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x36

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    if-ltz p3, :cond_2

    const p1, 0xffff

    if-gt p3, p1, :cond_2

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    int-to-byte v1, p3

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lmb/n;->c(I)I

    move-result v2

    iget-object p1, p1, Lmb/n;->d:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v0, p1, v2

    aput-byte v1, p1, v3

    :goto_0
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    invoke-virtual {p0, p2}, Lmb/a7;->p2(Lmb/b0;)Lorg/codehaus/janino/util/r0;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lmb/a7;->o2(SLorg/codehaus/janino/util/r0;)V

    return-void

    :cond_2
    new-instance p0, Lhb/b;

    const-string p1, "Unsigned short value out of legal range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c([Lmb/x3;)S
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_d

    aget-object v3, p1, v1

    instance-of v4, v3, Lmb/n0;

    if-eqz v4, :cond_c

    check-cast v3, Lmb/n0;

    iget-object v3, v3, Lmb/n0;->c:Ljava/lang/String;

    const-string v4, "public"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_0
    const-string v4, "private"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :cond_1
    const-string v4, "protected"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    :cond_2
    const-string v4, "static"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_1

    :cond_3
    const-string v4, "final"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_4
    const-string v4, "synchronized"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    or-int/lit8 v2, v2, 0x20

    goto :goto_1

    :cond_5
    const-string v4, "volatile"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    or-int/lit8 v2, v2, 0x40

    goto :goto_1

    :cond_6
    const-string v4, "transient"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    :cond_7
    const-string v4, "native"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    :cond_8
    const-string v4, "abstract"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    or-int/lit16 v2, v2, 0x400

    goto :goto_1

    :cond_9
    const-string v4, "strictfp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    or-int/lit16 v2, v2, 0x800

    goto :goto_1

    :cond_a
    const-string v4, "default"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_1

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid modifier \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    int-to-short p0, v2

    return p0
.end method

.method public final c0(Lmb/r5;Ljava/util/List;Lg5/l;Lmb/e1;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "close"

    const-string v6, "!="

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v0, v3, v4}, Lmb/a7;->b0(Lmb/r5;Lmb/y6;Lmb/e5;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmb/p5;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    invoke-interface {v2, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v12, v8, Lmb/m3;->a:Lhb/c;

    iget-object v9, v1, Lmb/a7;->h:Lmb/b;

    iget-object v11, v9, Lmb/a0;->u:Lmb/x;

    iget-object v13, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v13}, Lmb/n;->q()V

    :try_start_0
    new-instance v13, Lg5/s;

    invoke-direct {v13, v1, v0}, Lg5/s;-><init>(Lmb/a7;Ljava/lang/Object;)V

    invoke-virtual {v8, v13}, Lmb/p5;->x(Lmb/q7;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmb/g3;

    invoke-virtual {v1, v10, v11}, Lmb/a7;->g(ZLmb/b0;)Lmb/g3;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v1, v0, v14}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    iget-object v15, v13, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {v13}, Lmb/g3;->a()S

    move-result v14

    invoke-virtual {v1, v0, v15, v14}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    new-instance v14, Lmb/m1;

    new-instance v15, Lmb/c5;

    invoke-direct {v15, v12, v11}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    new-array v11, v10, [Lmb/s5;

    aput-object v15, v11, v7

    const-string v15, "___"

    invoke-direct {v14, v12, v7, v11, v15}, Lmb/m1;-><init>(Lhb/c;Z[Lmb/s5;Ljava/lang/String;)V

    iget-object v9, v9, Lmb/a0;->R:Lmb/v;

    if-nez v9, :cond_1

    new-instance v9, Lmb/c2;

    invoke-direct {v9, v12}, Lmb/m3;-><init>(Lhb/c;)V

    move/from16 v17, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    new-instance v9, Lmb/h2;

    new-instance v11, Lmb/v3;

    new-instance v15, Lmb/h3;

    invoke-direct {v15, v12, v13}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    move/from16 v17, v7

    const-string v7, "addSuppressed"

    new-instance v10, Lmb/h3;

    invoke-virtual {v1, v14}, Lmb/a7;->M0(Lmb/m1;)Lmb/g3;

    move-result-object v4

    invoke-direct {v10, v12, v4}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lmb/y4;

    aput-object v10, v4, v17

    invoke-direct {v11, v12, v15, v7, v4}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    invoke-direct {v9, v11}, Lmb/h2;-><init>(Lmb/y4;)V

    :goto_0
    new-instance v4, Lmb/t2;

    new-instance v7, Lmb/d1;

    new-instance v10, Lmb/h3;

    invoke-direct {v10, v12, v8}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    new-instance v11, Lmb/i4;

    invoke-direct {v11, v12}, Lmb/i4;-><init>(Lhb/c;)V

    invoke-direct {v7, v12, v10, v6, v11}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    new-instance v10, Lmb/t2;

    new-instance v11, Lmb/d1;

    new-instance v15, Lmb/h3;

    invoke-direct {v15, v12, v13}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    new-instance v13, Lmb/i4;

    invoke-direct {v13, v12}, Lmb/i4;-><init>(Lhb/c;)V

    invoke-direct {v11, v12, v15, v6, v13}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v6, v11

    new-instance v11, Lmb/r5;

    new-instance v13, Lmb/h2;

    new-instance v15, Lmb/v3;

    move-object/from16 v16, v6

    new-instance v6, Lmb/h3;

    invoke-direct {v6, v12, v8}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    move-object/from16 v18, v11

    move/from16 v11, v17

    new-array v3, v11, [Lmb/y4;

    invoke-direct {v15, v12, v6, v5, v3}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    invoke-direct {v13, v15}, Lmb/h2;-><init>(Lmb/y4;)V

    new-instance v3, Lmb/l1;

    invoke-direct {v3, v12, v14, v9}, Lmb/l1;-><init>(Lhb/c;Lmb/m1;Lmb/f1;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object v14, v13

    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v6, v16

    const/16 v16, 0x0

    move-object/from16 v11, v18

    const/4 v3, 0x0

    invoke-direct/range {v11 .. v16}, Lmb/r5;-><init>(Lhb/c;Ljava/util/List;Lmb/f1;Ljava/util/List;Lmb/e1;)V

    new-instance v9, Lmb/h2;

    new-instance v13, Lmb/v3;

    new-instance v14, Lmb/h3;

    invoke-direct {v14, v12, v8}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    const/4 v8, 0x0

    new-array v8, v8, [Lmb/y4;

    invoke-direct {v13, v12, v14, v5, v8}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    invoke-direct {v9, v13}, Lmb/h2;-><init>(Lmb/y4;)V

    invoke-direct {v10, v12, v6, v11, v9}, Lmb/t2;-><init>(Lhb/c;Lmb/y4;Lmb/f1;Lmb/f1;)V

    invoke-direct {v4, v12, v7, v10, v3}, Lmb/t2;-><init>(Lhb/c;Lmb/y4;Lmb/f1;Lmb/f1;)V

    invoke-virtual {v4, v0}, Lmb/e5;->a(Lmb/a5;)V

    new-instance v3, Landroidx/lifecycle/a1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    move-object/from16 v2, p3

    iput-object v2, v3, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    move-object/from16 v2, p4

    iput-object v2, v3, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lmb/a7;->b0(Lmb/r5;Lmb/y6;Lmb/e5;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->p()V

    return v0

    :goto_1
    iget-object v1, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->p()V

    throw v0
.end method

.method public final c1(Lmb/k3;Lmb/x;Ljava/lang/String;Lmb/x;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    if-eqz p5, :cond_0

    const/16 p1, 0xb2

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xb4

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    :goto_0
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lorg/codehaus/janino/util/o;

    invoke-virtual {p1, p2}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p2

    new-instance v1, Lorg/codehaus/janino/util/u;

    invoke-virtual {p1, p3}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p3

    invoke-virtual {p1, p5}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p5

    invoke-direct {v1, p3, p5}, Lorg/codehaus/janino/util/u;-><init>(SS)V

    invoke-virtual {p1, v1}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p3

    invoke-direct {v0, p2, p3}, Lorg/codehaus/janino/util/o;-><init>(SS)V

    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->m(Ljava/lang/String;)V

    return-void
.end method

.method public final c2(Lmb/y4;Lmb/b0;)V
    .locals 2

    check-cast p2, Lmb/x;

    sget-object v0, Lmb/x;->w:Lmb/w;

    iget-object v1, p0, Lmb/a7;->h:Lmb/b;

    if-ne p2, v0, :cond_0

    iget-object p2, v1, Lmb/a0;->C:Lmb/v;

    goto :goto_0

    :cond_0
    sget-object v0, Lmb/x;->C:Lmb/w;

    if-ne p2, v0, :cond_1

    iget-object p2, v1, Lmb/a0;->C:Lmb/v;

    goto :goto_0

    :cond_1
    sget-object v0, Lmb/x;->A:Lmb/w;

    if-ne p2, v0, :cond_2

    iget-object p2, v1, Lmb/a0;->C:Lmb/v;

    goto :goto_0

    :cond_2
    sget-object v0, Lmb/x;->B:Lmb/w;

    if-ne p2, v0, :cond_3

    iget-object p2, v1, Lmb/a0;->D:Lmb/v;

    goto :goto_0

    :cond_3
    sget-object v0, Lmb/x;->z:Lmb/w;

    if-ne p2, v0, :cond_4

    iget-object p2, v1, Lmb/a0;->E:Lmb/v;

    goto :goto_0

    :cond_4
    sget-object v0, Lmb/x;->y:Lmb/w;

    if-ne p2, v0, :cond_5

    iget-object p2, v1, Lmb/a0;->F:Lmb/v;

    goto :goto_0

    :cond_5
    sget-object v0, Lmb/x;->x:Lmb/w;

    if-ne p2, v0, :cond_6

    iget-object p2, v1, Lmb/a0;->G:Lmb/v;

    goto :goto_0

    :cond_6
    sget-object v0, Lmb/x;->D:Lmb/w;

    if-ne p2, v0, :cond_7

    iget-object p2, v1, Lmb/a0;->H:Lmb/v;

    goto :goto_0

    :cond_7
    iget-object p2, v1, Lmb/a0;->I:Lmb/v;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    return-void
.end method

.method public final d0(Lmb/u1;Lmb/f1;[Lmb/y4;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    iput-object v2, p1, Lmb/u1;->f:Lmb/d;

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3}, Lmb/n;->d()Lmb/d;

    move-result-object v3

    invoke-virtual {p0, p2}, Lmb/a7;->E(Lmb/f1;)Z

    move-result p2

    iget-object v4, p1, Lmb/u1;->f:Lmb/d;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lmb/k;->a()V

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p1, Lmb/u1;->f:Lmb/d;

    if-nez p2, :cond_1

    aget-object p0, p3, v0

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    goto :goto_1

    :cond_1
    array-length p2, p3

    move v4, v0

    :goto_0
    if-ge v4, p2, :cond_2

    aget-object v5, p3, v4

    invoke-virtual {p0, v5}, Lmb/a7;->C(Lmb/y4;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lmb/a7;->d1(Lmb/k;)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iput-object v2, p0, Lmb/k;->d:Lmb/p6;

    :goto_1
    iput-object v2, p1, Lmb/u1;->f:Lmb/d;

    iget-object p0, p1, Lmb/j1;->e:Lmb/d;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lmb/k;->a()V

    iput-object v2, p1, Lmb/j1;->e:Lmb/d;

    return v1

    :cond_4
    iget-object p3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p3}, Lmb/n;->d()Lmb/d;

    move-result-object p3

    iput-object p3, p1, Lmb/u1;->f:Lmb/d;

    invoke-virtual {p0, p2}, Lmb/a7;->E(Lmb/f1;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p3}, Lmb/a7;->d1(Lmb/k;)V

    :cond_5
    iput-object v2, p1, Lmb/u1;->f:Lmb/d;

    iget-object p0, p1, Lmb/j1;->e:Lmb/d;

    if-nez p0, :cond_6

    :goto_2
    return v0

    :cond_6
    invoke-virtual {p0}, Lmb/k;->a()V

    iput-object v2, p1, Lmb/j1;->e:Lmb/d;

    return v1
.end method

.method public final d1(Lmb/k;)V
    .locals 2

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p1}, Lmb/n;->r(ILmb/k;)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    const/4 p1, 0x0

    iput-object p1, p0, Lmb/k;->d:Lmb/p6;

    return-void
.end method

.method public final d2(Lmb/r0;)Lmb/r;
    .locals 2

    new-instance v0, Lmb/t6;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-interface {p1, v0}, Lmb/r0;->s(Lmb/e7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/r;

    return-object p0
.end method

.method public final e(Lmb/k2;Lorg/codehaus/janino/util/t0;)V
    .locals 12

    iget-object v0, p1, Lmb/k2;->g:[Lmb/z5;

    iget-object v1, p1, Lmb/k2;->e:[Lmb/x3;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    iget-object v6, p1, Lmb/k2;->f:Lmb/s5;

    move v7, v3

    :goto_1
    iget v8, v5, Lmb/z5;->d:I

    iget-object v9, v5, Lmb/z5;->c:Ljava/lang/String;

    if-ge v7, v8, :cond_0

    new-instance v8, Lmb/z0;

    invoke-direct {v8, v6}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v7, v7, 0x1

    move-object v6, v8

    goto :goto_1

    :cond_0
    const-string v7, "final"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v7

    sget-object v8, Lmb/a7;->q:Lmb/q;

    if-eqz v7, :cond_1

    iget-object v5, v5, Lmb/z5;->e:Lmb/x0;

    instance-of v7, v5, Lmb/y4;

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Lmb/y4;

    invoke-virtual {p0, v7}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v10

    check-cast v10, Lmb/x;

    invoke-virtual {p0, v5, v7, v10}, Lmb/a7;->m0(Lmb/k3;Ljava/lang/Object;Lmb/b0;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v8

    :goto_2
    invoke-virtual {p0, v1}, Lmb/a7;->c([Lmb/x3;)S

    move-result v7

    const-string v10, "private"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    and-int/lit8 v7, v7, -0x8

    int-to-short v7, v7

    invoke-virtual {p0, v6}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v6

    check-cast v6, Lmb/x;

    invoke-virtual {v6}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v8, :cond_2

    move-object v5, v11

    :cond_2
    invoke-virtual {p2, v7, v9, v6, v5}, Lorg/codehaus/janino/util/t0;->f(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/codehaus/janino/util/d0;

    move-result-object v5

    goto :goto_3

    :cond_3
    iget-object v10, p1, Lmb/e5;->c:Lmb/a5;

    check-cast v10, Lmb/v5;

    instance-of v10, v10, Lmb/y2;

    if-eqz v10, :cond_4

    const/16 v7, 0x19

    :cond_4
    invoke-virtual {p0, v6}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v6

    check-cast v6, Lmb/x;

    invoke-virtual {v6}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v8, :cond_5

    move-object v5, v11

    :cond_5
    invoke-virtual {p2, v7, v9, v6, v5}, Lorg/codehaus/janino/util/t0;->f(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/codehaus/janino/util/d0;

    move-result-object v5

    :goto_3
    invoke-static {v1}, La/a;->a([Lmb/x3;)[Lmb/r0;

    move-result-object v6

    invoke-virtual {p0, v6, v5, p2}, Lmb/a7;->J([Lmb/r0;Lorg/codehaus/janino/util/c;Lorg/codehaus/janino/util/t0;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final e0(ZZZLc5/o;)V
    .locals 1

    iget-object v0, p0, Lmb/a7;->g:Lmb/k0;

    iput-boolean p1, p0, Lmb/a7;->j:Z

    iput-boolean p2, p0, Lmb/a7;->k:Z

    iput-boolean p3, p0, Lmb/a7;->l:Z

    iget-object p1, p0, Lmb/a7;->i:Lc5/o;

    if-nez p1, :cond_1

    iput-object p4, p0, Lmb/a7;->i:Lc5/o;

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Lmb/t6;

    const/16 p3, 0xd

    invoke-direct {p2, p0, p3}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {v0, p2}, Lmb/k0;->f(Lmb/d7;)Ljava/lang/Object;

    iget p2, p0, Lmb/a7;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p2, :cond_0

    iput-object p1, p0, Lmb/a7;->i:Lc5/o;

    return-void

    :cond_0
    :try_start_1
    new-instance p2, Lhb/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p4, p0, Lmb/a7;->f:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " error(s) while compiling unit \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v0, Lmb/k0;->a:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    iput-object p1, p0, Lmb/a7;->i:Lc5/o;

    throw p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\"UnitCompiler.compileUnit()\" is not reentrant"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e1(Lmb/m3;ILmb/k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    add-int/lit16 p2, p2, 0x9f

    invoke-virtual {p1, p2, p3}, Lmb/n;->r(ILmb/k;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iget-object p0, p0, Lmb/k;->d:Lmb/p6;

    iput-object p0, p3, Lmb/k;->d:Lmb/p6;

    return-void
.end method

.method public final e2(Lmb/u3;)Lmb/v;
    .locals 2

    iget-object v0, p1, Lmb/u3;->m:Lmb/h6;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lmb/h6;

    iget-object v1, p1, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {p0, v1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lmb/h6;-><init>(Lmb/a7;Lmb/x;Lmb/u3;)V

    iput-object v0, p1, Lmb/u3;->m:Lmb/h6;

    return-object v0
.end method

.method public final f(Lmb/k3;)V
    .locals 4

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    iget p1, p1, Lhb/c;->m:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget-object v1, p0, Lmb/n;->g:Lmb/h;

    :cond_2
    iget-object v1, v1, Lmb/k;->b:Lmb/k;

    iget-object v2, p0, Lmb/n;->e:Lmb/k;

    if-eq v1, v2, :cond_3

    instance-of v2, v1, Lmb/i;

    if-eqz v2, :cond_2

    check-cast v1, Lmb/i;

    iget-short v1, v1, Lmb/i;->f:S

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Lmb/i;

    iget-object v1, p0, Lmb/n;->g:Lmb/h;

    iget v2, v1, Lmb/k;->a:I

    iget-object v3, v1, Lmb/k;->d:Lmb/p6;

    int-to-short p1, p1

    invoke-direct {v0, p0, v2, v3, p1}, Lmb/i;-><init>(Lmb/n;ILmb/p6;S)V

    iget-object p0, v1, Lmb/k;->b:Lmb/k;

    iput-object p0, v0, Lmb/k;->b:Lmb/k;

    iput-object v1, v0, Lmb/k;->c:Lmb/k;

    iput-object v0, p0, Lmb/k;->c:Lmb/k;

    iput-object v0, v1, Lmb/k;->b:Lmb/k;

    return-void
.end method

.method public final f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;
    .locals 4

    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->j0(Lmb/k3;I)V

    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1}, Lmb/a7;->j0(Lmb/k3;I)V

    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v2}, Lmb/a7;->j0(Lmb/k3;I)V

    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->i0(Lmb/k3;F)V

    sget-object p0, Lmb/x;->z:Lmb/w;

    return-object p0

    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->k0(Lmb/k3;J)V

    sget-object p0, Lmb/x;->B:Lmb/w;

    return-object p0

    :cond_5
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->h0(Lmb/k3;D)V

    sget-object p0, Lmb/x;->y:Lmb/w;

    return-object p0

    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    iget-object v3, p0, Lmb/a7;->h:Lmb/b;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lmb/a7;->K1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object v0, p2, v2

    invoke-virtual {p0, p1, v0}, Lmb/a7;->l0(Lmb/k3;Ljava/lang/String;)V

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_7

    aget-object v0, p2, v1

    invoke-virtual {p0, p1, v0}, Lmb/a7;->l0(Lmb/k3;Ljava/lang/String;)V

    iget-object v0, v3, Lmb/a0;->z:Lmb/v;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object p0, v3, Lmb/a0;->r:Lmb/x;

    return-object p0

    :cond_8
    instance-of v0, p2, Lmb/x;

    if-eqz v0, :cond_9

    check-cast p2, Lmb/x;

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->t2(S)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    const-string p1, "Ljava/lang/Class;"

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    iget-object p0, v3, Lmb/a0;->f:Lmb/x;

    return-object p0

    :cond_9
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-virtual {p0, v1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    sget-object p1, Lorg/codehaus/janino/util/s0;->i:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    sget-object p0, Lmb/x;->u:Lmb/w;

    return-object p0

    :cond_a
    new-instance p0, Lhb/b;

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown literal \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->j0(Lmb/k3;I)V

    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0
.end method

.method public final f1(Lmb/k3;ILmb/k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    add-int/lit16 p2, p2, 0x99

    invoke-virtual {p1, p2, p3}, Lmb/n;->r(ILmb/k;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iget-object p0, p0, Lmb/k;->d:Lmb/p6;

    iput-object p0, p3, Lmb/k;->d:Lmb/p6;

    return-void
.end method

.method public final f2(Lmb/c1;)Lmb/n3;
    .locals 2

    invoke-virtual {p1}, Lmb/c1;->y()Lmb/n3;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expression \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not an lvalue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(ZLmb/b0;)Lmb/g3;
    .locals 1

    new-instance v0, Lmb/g3;

    invoke-direct {v0, p1, p2}, Lmb/g3;-><init>(ZLmb/b0;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lmb/a7;->h(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object p0

    iput-object p0, v0, Lmb/g3;->c:Lmb/j3;

    return-object v0
.end method

.method public final g0(Lmb/w1;Lmb/w;)V
    .locals 2

    sget-object v0, Lmb/x;->w:Lmb/w;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    sget-object v0, Lmb/x;->x:Lmb/w;

    if-eq p2, v0, :cond_4

    sget-object v0, Lmb/x;->A:Lmb/w;

    if-eq p2, v0, :cond_4

    sget-object v0, Lmb/x;->C:Lmb/w;

    if-eq p2, v0, :cond_4

    sget-object v0, Lmb/x;->D:Lmb/w;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmb/x;->B:Lmb/w;

    if-ne p2, v0, :cond_1

    int-to-long v0, v1

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->k0(Lmb/k3;J)V

    return-void

    :cond_1
    sget-object v0, Lmb/x;->z:Lmb/w;

    if-ne p2, v0, :cond_2

    int-to-float p2, v1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->i0(Lmb/k3;F)V

    return-void

    :cond_2
    sget-object v0, Lmb/x;->y:Lmb/w;

    if-ne p2, v0, :cond_3

    int-to-double v0, v1

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->h0(Lmb/k3;D)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v1}, Lmb/a7;->j0(Lmb/k3;I)V

    return-void
.end method

.method public final g1(Lmb/k3;Lmb/g3;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-virtual {p2}, Lmb/g3;->a()S

    move-result p1

    const/16 v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "++"

    const/16 v4, 0x84

    if-le p1, v0, :cond_1

    const/16 p1, 0xc4

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    invoke-virtual {p0, v4}, Lmb/a7;->q2(I)V

    invoke-virtual {p2}, Lmb/g3;->a()S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    if-ne p3, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lmb/a7;->v2(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lmb/a7;->q2(I)V

    invoke-virtual {p2}, Lmb/g3;->a()S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->r2(I)V

    if-ne p3, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lmb/a7;->r2(I)V

    return-void
.end method

.method public final g2(Lmb/c1;)Lmb/y4;
    .locals 2

    invoke-virtual {p1}, Lmb/c1;->A()Lmb/y4;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expression \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not an rvalue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Lmb/b0;Ljava/lang/String;)Lmb/j3;
    .locals 1

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    move-object v0, p1

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmb/o;->c(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lmb/n;->b(Ljava/lang/String;Lmb/b0;S)Lmb/j3;

    move-result-object p0

    return-object p0
.end method

.method public final h0(Lmb/k3;D)V
    .locals 4

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/codehaus/janino/util/n;

    invoke-direct {v0, p2, p3}, Lorg/codehaus/janino/util/n;-><init>(D)V

    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2}, Lmb/a7;->q2(I)V

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-byte p1, p1

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lmb/n;->c(I)I

    move-result v0

    iget-object p2, p2, Lmb/n;->d:[B

    add-int/lit8 v1, v0, 0x1

    aput-byte p3, p2, v0

    aput-byte p1, p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    double-to-int p1, p2

    add-int/lit8 p1, p1, 0xe

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    :goto_1
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    sget-object p1, Lorg/codehaus/janino/util/s0;->g:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final h2(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)Z
    .locals 10

    const-string v0, "tryAssignmentConversion"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lmb/a7;->m:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmb/a7;->j2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p2, p3}, Lmb/a7;->F1(Lmb/b0;Lmb/b0;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    sget-object p4, Lmb/x;->u:Lmb/w;

    if-ne p2, p4, :cond_2

    goto :goto_0

    :cond_2
    check-cast p2, Lmb/x;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lmb/n;->i()V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    check-cast p3, Lmb/x;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->m(Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-virtual {p0, p2}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object v1

    if-eqz v1, :cond_5

    if-ne v1, p3, :cond_4

    invoke-virtual {p0, p1, p2, v1}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    return v0

    :cond_4
    invoke-static {v1, p3}, Lmb/a7;->F1(Lmb/b0;Lmb/b0;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, p1, p2, v1}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    invoke-virtual {p1}, Lmb/n;->i()V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    check-cast p3, Lmb/x;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->m(Ljava/lang/String;)V

    return v0

    :cond_5
    invoke-virtual {p0, p2}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v1

    if-eqz v1, :cond_7

    if-ne v1, p3, :cond_6

    invoke-virtual {p0, p1, p2, v1}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    return v0

    :cond_6
    invoke-static {v1, p3}, Lmb/a7;->E1(Lmb/x;Lmb/b0;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, p1, p2, v1}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    invoke-virtual {p0, p1, v1, p3}, Lmb/a7;->j2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    return v0

    :cond_7
    sget-object p2, Lmb/a7;->q:Lmb/q;

    if-eq p4, p2, :cond_10

    const-string p2, "tryConstantAssignmentConversion"

    filled-new-array {p1, p4, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, p2, v1}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of p2, p4, Ljava/lang/Byte;

    if-eqz p2, :cond_8

    check-cast p4, Ljava/lang/Byte;

    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_1

    :cond_8
    instance-of p2, p4, Ljava/lang/Short;

    if-eqz p2, :cond_9

    check-cast p4, Ljava/lang/Short;

    invoke-virtual {p4}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_1

    :cond_9
    instance-of p2, p4, Ljava/lang/Integer;

    if-eqz p2, :cond_a

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_a
    instance-of p2, p4, Ljava/lang/Character;

    if-eqz p2, :cond_10

    check-cast p4, Ljava/lang/Character;

    invoke-virtual {p4}, Ljava/lang/Character;->charValue()C

    move-result p2

    :goto_1
    sget-object p4, Lmb/x;->w:Lmb/w;

    const/16 v1, 0x7f

    const/16 v2, -0x80

    if-ne p3, p4, :cond_b

    if-lt p2, v2, :cond_10

    if-gt p2, v1, :cond_10

    goto :goto_2

    :cond_b
    sget-object v3, Lmb/x;->C:Lmb/w;

    const/16 v4, 0x7fff

    const/16 v5, -0x8000

    if-ne p3, v3, :cond_c

    if-lt p2, v5, :cond_10

    if-gt p2, v4, :cond_10

    goto :goto_2

    :cond_c
    sget-object v6, Lmb/x;->x:Lmb/w;

    const v7, 0xffff

    if-ne p3, v6, :cond_d

    if-ltz p2, :cond_10

    if-gt p2, v7, :cond_10

    :goto_2
    return v0

    :cond_d
    iget-object v8, p0, Lmb/a7;->h:Lmb/b;

    iget-object v9, v8, Lmb/a0;->d:Lmb/x;

    if-ne p3, v9, :cond_e

    if-lt p2, v2, :cond_e

    if-gt p2, v1, :cond_e

    invoke-virtual {p0, p1, p4, p3}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    return v0

    :cond_e
    iget-object p4, v8, Lmb/a0;->q:Lmb/x;

    if-ne p3, p4, :cond_f

    if-lt p2, v5, :cond_f

    if-gt p2, v4, :cond_f

    invoke-virtual {p0, p1, v3, p3}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    return v0

    :cond_f
    iget-object p4, v8, Lmb/a0;->e:Lmb/x;

    if-ne p3, p4, :cond_10

    if-ltz p2, :cond_10

    if-gt p2, v7, :cond_10

    invoke-virtual {p0, p1, v6, p3}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    return v0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lmb/b0;Ljava/lang/String;)Lmb/j3;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->h(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object p2

    iget-short v0, p2, Lmb/j3;->a:S

    invoke-virtual {p0, p1}, Lmb/a7;->p2(Lmb/b0;)Lorg/codehaus/janino/util/r0;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmb/a7;->o2(SLorg/codehaus/janino/util/r0;)V

    return-object p2
.end method

.method public final i0(Lmb/k3;F)V
    .locals 1

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-eq p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/codehaus/janino/util/p;

    invoke-direct {v0, p2}, Lorg/codehaus/janino/util/p;-><init>(F)V

    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->t2(S)V

    goto :goto_1

    :cond_1
    :goto_0
    float-to-int p1, p2

    add-int/lit8 p1, p1, 0xb

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    :goto_1
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    sget-object p1, Lorg/codehaus/janino/util/s0;->f:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final i2(Lmb/k3;Lmb/b0;Lmb/b0;)Z
    .locals 2

    instance-of v0, p2, Lmb/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p3, Lmb/x;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lmb/x;

    check-cast p3, Lmb/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lmb/a7;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_1

    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lmb/a7;->q2(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public final j(Lmb/y4;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v0

    const-string v1, "&"

    if-ne p2, v1, :cond_0

    const/16 p2, 0x7e

    goto :goto_0

    :cond_0
    const-string v1, "|"

    if-ne p2, v1, :cond_1

    const/16 p2, 0x80

    goto :goto_0

    :cond_1
    const-string v1, "^"

    if-ne p2, v1, :cond_2

    const/16 p2, 0x82

    goto :goto_0

    :cond_2
    const p2, 0x7fffffff

    :goto_0
    sget-object v1, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/2addr p2, v1

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-virtual {p0, p2}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, v0}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final j0(Lmb/k3;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/4 p1, -0x1

    if-lt p2, p1, :cond_0

    const/4 p1, 0x5

    if-gt p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p2}, Lmb/a7;->q2(I)V

    goto :goto_0

    :cond_0
    const/16 p1, -0x80

    if-lt p2, p1, :cond_1

    const/16 p1, 0x7f

    if-gt p2, p1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    invoke-virtual {p0, p2}, Lmb/a7;->r2(I)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x8000

    if-lt p2, p1, :cond_2

    const/16 p1, 0x7fff

    if-gt p2, p1, :cond_2

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    invoke-virtual {p0, p2}, Lmb/a7;->v2(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p1, p2}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->t2(S)V

    :goto_0
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->k()V

    return-void
.end method

.method public final j2(Lmb/k3;Lmb/b0;Lmb/b0;)Z
    .locals 2

    check-cast p3, Lmb/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p2, Lmb/x;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lmb/a7;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lmb/a7;->q2(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final k(Lmb/m3;)V
    .locals 2

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    :try_start_0
    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v1

    check-cast v1, Lorg/codehaus/janino/util/m0;

    iget-short v1, v1, Lorg/codehaus/janino/util/m0;->a:S

    iget-object v0, v0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v0, v1}, Lorg/codehaus/janino/util/t0;->k(S)Lorg/codehaus/janino/util/v;

    move-result-object v1

    check-cast v1, Lorg/codehaus/janino/util/m;

    iget-short v1, v1, Lorg/codehaus/janino/util/m;->a:S

    invoke-virtual {v0, v1}, Lorg/codehaus/janino/util/t0;->l(S)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmb/o;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    const/16 v0, 0xbe

    invoke-virtual {p0, v0}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->k()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lhb/b;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final k0(Lmb/k3;J)V
    .locals 2

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/codehaus/janino/util/s;

    invoke-direct {v0, p2, p3}, Lorg/codehaus/janino/util/s;-><init>(J)V

    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2}, Lmb/a7;->q2(I)V

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-byte p1, p1

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lmb/n;->c(I)I

    move-result v0

    iget-object p2, p2, Lmb/n;->d:[B

    add-int/lit8 v1, v0, 0x1

    aput-byte p3, p2, v0

    aput-byte p1, p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    long-to-int p1, p2

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    :goto_1
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    sget-object p1, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final k1(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmb/a7;->g:Lmb/k0;

    iget-object v1, v1, Lmb/k0;->b:[Lmb/f0;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-class v2, Lmb/g0;

    invoke-static {v1, v2}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lkb/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/g0;

    iget-object v3, v2, Lmb/g0;->c:[Ljava/lang/String;

    iget-object v4, v2, Lmb/m3;->a:Lhb/c;

    array-length v5, v3

    const-string v6, "SNO: Empty string array"

    if-eqz v5, :cond_2

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lmb/g0;->c:[Ljava/lang/String;

    array-length v3, v2

    if-eqz v3, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "."

    invoke-static {v3, v2, v5}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p1, v0, v4}, Lmb/a7;->m1(Lmb/x;Ljava/lang/String;Ljava/util/ArrayList;Lhb/c;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method

.method public final k2(Lmb/k3;Lmb/b0;)Lmb/w;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->n0(Lmb/k3;Lmb/b0;)Lmb/x;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->l2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmb/a7;->R1(Lmb/k3;Lmb/x;Lmb/w;)V

    return-object v0
.end method

.method public final l(Lmb/x0;Lmb/b0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    check-cast p2, Lmb/x;

    invoke-static {p2}, Lmb/a7;->j1(Lmb/x;)I

    move-result p1

    add-int/lit8 p1, p1, 0x4f

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    return-void
.end method

.method public final l0(Lmb/k3;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    new-instance v0, Lorg/codehaus/janino/util/w;

    invoke-virtual {p1, p2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p2

    invoke-direct {v0, p2}, Lorg/codehaus/janino/util/w;-><init>(S)V

    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->t2(S)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    const-string p1, "Ljava/lang/String;"

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final l1(Lhb/c;Ljava/lang/String;)Lmb/x;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lmb/a7;->U0(Lhb/c;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmb/a7;->D0(Lhb/c;[Ljava/lang/String;)Lmb/x;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Imported class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    array-length v3, p2

    invoke-static {v3, v2, p2}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" could not be loaded"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final l2(Lmb/k3;Lmb/b0;)Lmb/w;
    .locals 2

    instance-of v0, p2, Lmb/x;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lmb/x;->y:Lmb/w;

    if-ne p2, p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lmb/x;->z:Lmb/w;

    if-ne p2, p0, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lmb/x;->B:Lmb/w;

    if-ne p2, p0, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unary numeric promotion not possible on non-numeric-primitive type \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m(Lmb/s1;)V
    .locals 8

    iget-object v0, p1, Lmb/l0;->c:Lmb/v5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    check-cast v0, Lmb/e0;

    iget-object v0, v0, Lmb/e0;->k:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/s;

    iget-object v3, p1, Lmb/s1;->m:Ljava/util/HashMap;

    invoke-virtual {v2}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/g3;

    if-eqz v3, :cond_0

    new-instance v4, Lmb/h2;

    new-instance v5, Lmb/b1;

    new-instance v6, Lmb/i2;

    new-instance v7, Lmb/m5;

    invoke-direct {v7, v1}, Lmb/y4;-><init>(Lhb/c;)V

    invoke-direct {v6, v1, v7, v2}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    new-instance v2, Lmb/h3;

    invoke-direct {v2, v1, v3}, Lmb/h3;-><init>(Lhb/c;Lmb/g3;)V

    const-string v3, "="

    invoke-direct {v5, v1, v6, v3, v2}, Lmb/b1;-><init>(Lhb/c;Lmb/n3;Ljava/lang/String;Lmb/y4;)V

    invoke-direct {v4, v5}, Lmb/h2;-><init>(Lmb/y4;)V

    invoke-virtual {v4, p1}, Lmb/e5;->a(Lmb/a5;)V

    invoke-virtual {p0, v4}, Lmb/a7;->E(Lmb/f1;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lhb/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SNO: Synthetic parameter for synthetic field \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final m0(Lmb/k3;Ljava/lang/Object;Lmb/b0;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lmb/a7;->q:Lmb/q;

    if-ne p2, v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lmb/x;->D:Lmb/w;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    return-object p2

    :cond_1
    iget-object v0, p0, Lmb/a7;->h:Lmb/b;

    iget-object v2, v0, Lmb/a0;->r:Lmb/x;

    if-ne p3, v2, :cond_3

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_2

    if-nez p2, :cond_20

    :cond_2
    return-object p2

    :cond_3
    sget-object v2, Lmb/x;->w:Lmb/w;

    if-ne p3, v2, :cond_7

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    return-object p2

    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    const/16 v2, 0x7f

    const/16 v3, -0x80

    if-nez v0, :cond_6

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_20

    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-lt v0, v3, :cond_20

    if-gt v0, v2, :cond_20

    int-to-byte p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lt v0, v3, :cond_20

    if-gt v0, v2, :cond_20

    int-to-byte p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v2, Lmb/x;->C:Lmb/w;

    if-ne p3, v2, :cond_b

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_9

    return-object p2

    :cond_9
    instance-of v0, p2, Ljava/lang/Character;

    const/16 v2, 0x7fff

    const/16 v3, -0x8000

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-lt v0, v3, :cond_20

    if-gt v0, v2, :cond_20

    int-to-short p0, v0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v3, :cond_20

    if-gt v0, v2, :cond_20

    int-to-short p0, v0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object v2, Lmb/x;->x:Lmb/w;

    if-ne p3, v2, :cond_e

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_c

    return-object p2

    :cond_c
    instance-of v2, p2, Ljava/lang/Byte;

    if-nez v2, :cond_d

    if-nez v0, :cond_d

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    :cond_d
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_20

    const v2, 0xffff

    if-gt v0, v2, :cond_20

    int-to-char p0, v0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object v2, Lmb/x;->A:Lmb/w;

    if-ne p3, v2, :cond_12

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    return-object p2

    :cond_f
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_11

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_20

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_11
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_12
    sget-object v2, Lmb/x;->B:Lmb/w;

    if-ne p3, v2, :cond_16

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_13

    return-object p2

    :cond_13
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_15

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_15

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_14

    goto :goto_2

    :cond_14
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_20

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_16
    sget-object v2, Lmb/x;->z:Lmb/w;

    if-ne p3, v2, :cond_1a

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_17

    return-object p2

    :cond_17
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_19

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_19

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_19

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_18

    goto :goto_3

    :cond_18
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_20

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object v2, Lmb/x;->y:Lmb/w;

    if-ne p3, v2, :cond_1e

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1b

    return-object p2

    :cond_1b
    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_1d

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_1d

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_1d

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_1d

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1c

    goto :goto_4

    :cond_1c
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_20

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_4
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1e
    if-nez p2, :cond_1f

    move-object v2, p3

    check-cast v2, Lmb/x;

    invoke-virtual {v2}, Lmb/x;->H()Z

    move-result v2

    if-nez v2, :cond_1f

    return-object v1

    :cond_1f
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v0, v0, Lmb/a0;->r:Lmb/x;

    move-object v2, p3

    check-cast v2, Lmb/x;

    invoke-virtual {v2, v0}, Lmb/x;->D(Lmb/x;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-object p2

    :cond_20
    const-string v0, "\""

    if-nez p2, :cond_21

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Cannot convert \'null\' to type \""

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot convert constant of type \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" to type \""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1
.end method

.method public final m1(Lmb/x;Ljava/lang/String;Ljava/util/ArrayList;Lhb/c;)V
    .locals 7

    invoke-virtual {p1, p2}, Lmb/x;->c(Ljava/lang/String;)[Lmb/x;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lmb/x;->m()Lmb/x;

    move-result-object v5

    if-ne v5, p1, :cond_0

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmb/x;->j()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/s;

    const/4 v1, 0x0

    const-string v3, "\" must be static"

    const-string v4, "\" of \""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmb/s;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Field \""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {p1, p2}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object p2

    array-length v0, p2

    :goto_2
    if-ge v2, v0, :cond_5

    aget-object v5, p2, v2

    invoke-virtual {v5}, Lmb/v;->n()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "method \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_5
    return-void
.end method

.method public final m2(Lmb/k3;Lmb/b0;Lmb/x;)V
    .locals 7

    move-object v3, p2

    check-cast v3, Lmb/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Value"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lmb/c6;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-direct {v5, p2, p3}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v2, 0xb6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lmb/a7;->s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V

    return-void
.end method

.method public final n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lmb/a7;->h2(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Assignment conversion not possible from type \""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" to type \""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n0(Lmb/k3;Lmb/b0;)Lmb/x;
    .locals 2

    instance-of v0, p2, Lmb/x;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object of type \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" cannot be converted to a numeric type"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n1(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmb/a7;->g:Lmb/k0;

    iget-object v1, v1, Lmb/k0;->b:[Lmb/f0;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-class v2, Lmb/i0;

    invoke-static {v1, v2}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lkb/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/i0;

    iget-object v3, v2, Lmb/m3;->a:Lhb/c;

    iget-object v2, v2, Lmb/i0;->c:[Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lmb/a7;->D0(Lhb/c;[Ljava/lang/String;)Lmb/x;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4, p1, v0, v3}, Lmb/a7;->m1(Lmb/x;Ljava/lang/String;Ljava/util/ArrayList;Lhb/c;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not load \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    array-length v1, v2

    invoke-static {v1, v0, v2}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-object v0
.end method

.method public final o(Lmb/k3;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 p1, 0xbf

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    const/4 p1, 0x0

    iput-object p1, p0, Lmb/k;->d:Lmb/p6;

    return-void
.end method

.method public final o0(Lmb/j2;)Lmb/y4;
    .locals 5

    iget-object v0, p1, Lmb/j2;->h:Lmb/y4;

    iget-object v1, p1, Lmb/j2;->g:Ljava/lang/String;

    iget-object v2, p1, Lmb/m3;->a:Lhb/c;

    iget-object v3, p1, Lmb/j2;->f:Lmb/c1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v3}, Lmb/a7;->W0(Lmb/c1;)Lmb/b0;

    move-result-object v0

    const-string v4, "length"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Lmb/x;

    invoke-virtual {v4}, Lmb/x;->C()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lmb/y0;

    invoke-virtual {p0, v3}, Lmb/a7;->g2(Lmb/c1;)Lmb/y4;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lmb/y0;-><init>(Lhb/c;Lmb/y4;)V

    goto :goto_0

    :cond_1
    check-cast v0, Lmb/x;

    invoke-static {v0, v1, v2}, Lmb/a7;->v0(Lmb/x;Ljava/lang/String;Lhb/c;)Lmb/s;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p0, Lmb/i2;

    invoke-direct {p0, v2, v3, v0}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    move-object v0, p0

    :goto_0
    iget-object p0, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {v0, p0}, Lmb/y4;->a(Lmb/a5;)V

    iput-object v0, p1, Lmb/j2;->h:Lmb/y4;

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lmb/a7;->W0(Lmb/c1;)Lmb/b0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" has no field \""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o1(Lhb/c;Ljava/lang/String;)Lmb/x;
    .locals 10

    iget-object v0, p0, Lmb/a7;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/x;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lmb/a7;->g:Lmb/k0;

    iget-object v2, v2, Lmb/k0;->b:[Lmb/f0;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-class v3, Lmb/j0;

    invoke-static {v2, v3}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lkb/c;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/j0;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lmb/j0;

    const-string v3, "java"

    const-string v4, "lang"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lhb/c;->o:Lhb/c;

    invoke-direct {v2, v4, v3}, Lmb/j0;-><init>(Lhb/c;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lmb/j0;

    iget-object v7, v7, Lmb/j0;->c:[Ljava/lang/String;

    array-length v8, v7

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    array-length v9, v7

    invoke-static {v7, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    aput-object p2, v8, v7

    invoke-virtual {p0, p1, v8}, Lmb/a7;->D0(Lhb/c;[Ljava/lang/String;)Lmb/x;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_3

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ambiguous class name: \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" vs. \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_2
    move-object v5, v7

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v5

    :goto_3
    invoke-virtual {v0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_6
    return-object v1
.end method

.method public final o2(SLorg/codehaus/janino/util/r0;)V
    .locals 10

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iget-object v0, p0, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v0}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, v0

    sget-object v5, Lorg/codehaus/janino/util/s0;->d:Lorg/codehaus/janino/util/j0;

    if-ge v2, v4, :cond_5

    aget-object v4, v0, v2

    if-ne v3, p1, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {v4}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    invoke-interface {p2}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v1

    if-ne p1, v1, :cond_1

    aput-object p2, v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-interface {p2}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    if-ne p1, v1, :cond_2

    aput-object p2, v0, v2

    add-int/lit8 p1, v2, 0x2

    add-int/lit8 p2, v2, 0x1

    array-length v4, v0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-static {v0, p1, v0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    sub-int/2addr p1, v3

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Lorg/codehaus/janino/util/r0;

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    if-ne p1, v1, :cond_3

    invoke-interface {p2}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    if-ne p1, v3, :cond_3

    array-length p1, v0

    add-int/2addr p1, v3

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Lorg/codehaus/janino/util/r0;

    add-int/lit8 p1, v2, 0x1

    add-int/lit8 v3, v2, 0x2

    array-length v4, v0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-static {v0, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v0, v2

    aput-object v5, v0, p1

    :goto_1
    new-instance p1, Lmb/p6;

    iget-object p2, p0, Lmb/k;->d:Lmb/p6;

    invoke-virtual {p2}, Lmb/p6;->b()[Lorg/codehaus/janino/util/r0;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    iput-object p1, p0, Lmb/k;->d:Lmb/p6;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vs. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    invoke-interface {v4}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    if-ge v3, p1, :cond_7

    iget-object v0, p0, Lmb/k;->d:Lmb/p6;

    new-instance v2, Lmb/p6;

    iget-object v4, v0, Lmb/p6;->a:[Lorg/codehaus/janino/util/r0;

    array-length v6, v4

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [Lorg/codehaus/janino/util/r0;

    move v8, v1

    :goto_3
    if-ge v8, v6, :cond_6

    aget-object v9, v4, v8

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    aput-object v5, v7, v8

    iget-object v0, v0, Lmb/p6;->b:[Lorg/codehaus/janino/util/r0;

    invoke-direct {v2, v7, v0}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    iput-object v2, p0, Lmb/k;->d:Lmb/p6;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lmb/k;->d:Lmb/p6;

    new-instance v0, Lmb/p6;

    iget-object v2, p1, Lmb/p6;->a:[Lorg/codehaus/janino/util/r0;

    array-length v3, v2

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lorg/codehaus/janino/util/r0;

    :goto_4
    if-ge v1, v3, :cond_8

    aget-object v5, v2, v1

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    aput-object p2, v4, v1

    iget-object p1, p1, Lmb/p6;->b:[Lorg/codehaus/janino/util/r0;

    invoke-direct {v0, v4, p1}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    iput-object v0, p0, Lmb/k;->d:Lmb/p6;

    return-void
.end method

.method public final p(Lmb/y4;Lmb/b0;Lmb/b0;)Lmb/w;
    .locals 2

    instance-of v0, p2, Lmb/x;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p3, Lmb/x;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lmb/x;->y:Lmb/w;

    if-eq p2, p0, :cond_3

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lmb/x;->z:Lmb/w;

    if-eq p2, p0, :cond_3

    if-ne p3, p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lmb/x;->B:Lmb/w;

    if-eq p2, p0, :cond_3

    if-ne p3, p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lmb/x;->A:Lmb/w;

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Binary numeric promotion not possible on types \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" and \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p0(Lmb/h5;)Lmb/y4;
    .locals 7

    iget-object v0, p1, Lmb/h5;->h:Lmb/i2;

    iget-object v1, p1, Lmb/h5;->g:Ljava/lang/String;

    iget-object v2, p1, Lmb/m3;->a:Lhb/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lmb/m5;

    invoke-direct {v0, v2}, Lmb/y4;-><init>(Lhb/c;)V

    iget-object v3, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {v0, v3}, Lmb/y4;->a(Lmb/a5;)V

    iget-object v3, p1, Lmb/h5;->f:Lmb/s5;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v3

    :goto_0
    move-object v4, v3

    check-cast v4, Lmb/x;

    invoke-virtual {v4}, Lmb/x;->x()Lmb/x;

    move-result-object v4

    const-string v5, "\""

    if-eqz v4, :cond_3

    new-instance v3, Lmb/k1;

    new-instance v6, Lmb/c5;

    invoke-direct {v6, v2, v4}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v3, v2, v0, v6}, Lmb/k1;-><init>(Lhb/c;Lmb/y4;Lmb/s5;)V

    invoke-virtual {p0, v3}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v0

    check-cast v0, Lmb/x;

    invoke-static {v0, v1, v2}, Lmb/a7;->v0(Lmb/x;Ljava/lang/String;Lhb/c;)Lmb/s;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p0, Lmb/i2;

    invoke-direct {p0, v2, v3, v0}, Lmb/i2;-><init>(Lhb/c;Lmb/c1;Lmb/s;)V

    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {p0, v0}, Lmb/y4;->a(Lmb/a5;)V

    iput-object p0, p1, Lmb/h5;->h:Lmb/i2;

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class has no field \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Lhb/a;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot use \"super\" on \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0
.end method

.method public final p1(Lmb/s1;)V
    .locals 4

    iget-object p1, p1, Lmb/l0;->c:Lmb/v5;

    check-cast p1, Lmb/e0;

    iget-object p1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/f1;

    instance-of v2, v1, Lmb/u2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lmb/u2;

    iget-object v2, v2, Lmb/l0;->d:[Lmb/x3;

    const-string v3, "static"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lmb/k2;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lmb/k2;

    invoke-virtual {v2}, Lmb/k2;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    check-cast v1, Lmb/m3;

    iget-object p1, v1, Lmb/m3;->a:Lhb/c;

    const-string v0, "Instance variable declarator or instance initializer does not complete normally"

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method

.method public final p2(Lmb/b0;)Lorg/codehaus/janino/util/r0;
    .locals 3

    if-nez p1, :cond_0

    sget-object p0, Lorg/codehaus/janino/util/s0;->i:Lorg/codehaus/janino/util/j0;

    return-object p0

    :cond_0
    check-cast p1, Lmb/x;

    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "B"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "C"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "I"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "S"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "J"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    return-object p0

    :cond_2
    const-string v0, "F"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/codehaus/janino/util/s0;->f:Lorg/codehaus/janino/util/j0;

    return-object p0

    :cond_3
    const-string v0, "D"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lorg/codehaus/janino/util/s0;->g:Lorg/codehaus/janino/util/j0;

    return-object p0

    :cond_4
    sget-object v0, Lmb/o;->a:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_6

    :goto_0
    new-instance v0, Lorg/codehaus/janino/util/m0;

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p0

    invoke-direct {v0, p0, p1}, Lorg/codehaus/janino/util/m0;-><init>(SLjava/lang/String;)V

    return-object v0

    :cond_6
    new-instance p0, Lhb/b;

    const-string v0, "Cannot make VerificationTypeInfo from \""

    const-string v1, "\""

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    sget-object p0, Lorg/codehaus/janino/util/s0;->e:Lorg/codehaus/janino/util/j0;

    return-object p0
.end method

.method public final q(Lmb/k3;Lmb/b0;Lmb/b0;)V
    .locals 7

    move-object v3, p3

    check-cast v3, Lmb/x;

    check-cast p2, Lmb/x;

    new-instance v5, Lmb/c6;

    invoke-virtual {v3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p3, p2}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v2, 0xb8

    const-string v4, "valueOf"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lmb/a7;->s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V

    return-void
.end method

.method public final q0(Lmb/k3;)V
    .locals 2

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iget-object v0, v0, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v0}, Lmb/p6;->c()Lorg/codehaus/janino/util/r0;

    move-result-object v0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-interface {v0}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x59

    goto :goto_0

    :cond_0
    const/16 p1, 0x5c

    :goto_0
    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, v0}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final q1(Lmb/x;ILmb/a5;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    :goto_0
    instance-of v0, p3, Lmb/q1;

    if-nez v0, :cond_2

    instance-of v0, p3, Lmb/v5;

    if-eqz v0, :cond_1

    check-cast p3, Lmb/v5;

    invoke-virtual {p0, p3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lmb/a5;->b()Lmb/a5;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v1

    :goto_1
    if-ne p3, p1, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz p3, :cond_6

    iget-object p0, p0, Lmb/a7;->a:Ljava/util/EnumSet;

    sget-object v0, Lmb/c0;->l:Lmb/c0;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lmb/x;->m()Lmb/x;

    move-result-object p0

    move-object v0, p1

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lmb/x;->m()Lmb/x;

    move-result-object v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lmb/x;->m()Lmb/x;

    move-result-object p0

    move-object v2, p3

    :goto_3
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lmb/x;->m()Lmb/x;

    move-result-object v2

    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    goto :goto_3

    :cond_5
    if-ne v0, v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 p0, 0x1

    const-string v0, "\"."

    if-ne p2, p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Private member cannot be accessed from type \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lmb/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lmb/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_9

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 p0, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_4
    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    const/4 p0, 0x3

    if-ne p2, p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Member with \"package\" access cannot be accessed from type \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    move-object p0, p3

    :cond_c
    invoke-virtual {p1, p0}, Lmb/x;->D(Lmb/x;)Z

    move-result p2

    if-eqz p2, :cond_d

    :goto_5
    return-object v1

    :cond_d
    invoke-virtual {p0}, Lmb/x;->v()Lmb/x;

    move-result-object p0

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Protected member cannot be accessed from type \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\", which is neither declared in the same package as nor is a subclass of \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q2(I)V
    .locals 1

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    int-to-byte p1, p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmb/n;->c(I)I

    move-result v0

    iget-object p0, p0, Lmb/n;->d:[B

    aput-byte p1, p0, v0

    return-void
.end method

.method public final r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    new-instance v0, Lg5/s;

    invoke-direct {v0, p0, p2}, Lg5/s;-><init>(Lmb/a7;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final r0(Lmb/k3;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object p1

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p2}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object p2

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lmb/a7;->q2(I)V

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0, p2}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0, p2}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lmb/a7;->q0(Lmb/k3;)V

    :cond_2
    return-void
.end method

.method public final r1(Lmb/x;Lmb/a5;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lmb/x;->m()Lmb/x;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lmb/x;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lmb/x;->d()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "\""

    if-ne v0, v1, :cond_5

    :goto_0
    instance-of v0, p2, Lmb/v5;

    if-eqz v0, :cond_1

    check-cast p2, Lmb/v5;

    invoke-virtual {p0, p2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lmb/d2;

    if-eqz v0, :cond_4

    check-cast p2, Lmb/d2;

    iget-object p2, p2, Lmb/d2;->a:Lmb/m0;

    invoke-virtual {p0, p2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    :goto_1
    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmb/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmb/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_2

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" is inaccessible from this package"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p2}, Lmb/a5;->b()Lmb/a5;

    move-result-object p2

    goto :goto_0

    :cond_5
    new-instance p0, Lhb/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" has unexpected access \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmb/x;->d()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const-string p1, "null"

    goto :goto_4

    :cond_6
    const-string p1, "PUBLIC"

    goto :goto_4

    :cond_7
    const-string p1, "DEFAULT"

    goto :goto_4

    :cond_8
    const-string p1, "PROTECTED"

    goto :goto_4

    :cond_9
    const-string p1, "PRIVATE"

    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p1}, Lmb/x;->d()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lmb/a7;->q1(Lmb/x;ILmb/a5;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r2(I)V
    .locals 1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    int-to-byte p1, p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmb/n;->c(I)I

    move-result v0

    iget-object p0, p0, Lmb/n;->d:[B

    aput-byte p1, p0, v0

    return-void

    :cond_0
    new-instance p0, Lhb/b;

    const-string p1, "Byte value out of legal range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s(Lmb/e1;Ljava/util/Map;)V
    .locals 3

    iput-object p2, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lmb/f1;

    invoke-virtual {p0, v2, p2}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s0(Lmb/y4;)V
    .locals 3

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v0

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v1

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-interface {v0}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-interface {v1}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x5a

    goto :goto_0

    :cond_0
    const/16 p1, 0x5b

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/16 p1, 0x5d

    goto :goto_0

    :cond_2
    const/16 p1, 0x5e

    :goto_0
    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1, v0}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1, v1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, v0}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V
    .locals 7

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p5, Lmb/c6;->a:[Ljava/lang/String;

    iget-object v0, p5, Lmb/c6;->b:Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_1

    iget-object v4, p0, Lmb/a7;->e:Lmb/n;

    aget-object v5, p1, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lmb/o;->a:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_0

    const-string v6, "VBCDFIJSZ"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    invoke-virtual {v4}, Lmb/n;->i()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb9

    if-eq p2, v1, :cond_2

    const/16 v1, 0xb7

    if-eq p2, v1, :cond_2

    const/16 v1, 0xb6

    if-ne p2, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    :cond_3
    invoke-virtual {p0, p2}, Lmb/a7;->q2(I)V

    if-eqz p6, :cond_4

    invoke-virtual {p5}, Lmb/c6;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lmb/a7;->e:Lmb/n;

    iget-object p6, p6, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lorg/codehaus/janino/util/r;

    invoke-virtual {p6, p3}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p3

    new-instance v4, Lorg/codehaus/janino/util/u;

    invoke-virtual {p6, p4}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p4

    invoke-virtual {p6, p5}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p5

    invoke-direct {v4, p4, p5}, Lorg/codehaus/janino/util/u;-><init>(SS)V

    invoke-virtual {p6, v4}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p4

    invoke-direct {v1, p3, p4}, Lorg/codehaus/janino/util/r;-><init>(SS)V

    invoke-virtual {p6, v1}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p3

    invoke-virtual {p0, p3}, Lmb/a7;->v2(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p5}, Lmb/c6;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lmb/a7;->e:Lmb/n;

    iget-object p6, p6, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lorg/codehaus/janino/util/t;

    invoke-virtual {p6, p3}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p3

    new-instance v4, Lorg/codehaus/janino/util/u;

    invoke-virtual {p6, p4}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p4

    invoke-virtual {p6, p5}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p5

    invoke-direct {v4, p4, p5}, Lorg/codehaus/janino/util/u;-><init>(SS)V

    invoke-virtual {p6, v4}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p4

    invoke-direct {v1, p3, p4}, Lorg/codehaus/janino/util/t;-><init>(SS)V

    invoke-virtual {p6, v1}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p3

    invoke-virtual {p0, p3}, Lmb/a7;->v2(I)V

    :goto_2
    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v3}, Lmb/a7;->r2(I)V

    invoke-virtual {p0, v3}, Lmb/a7;->r2(I)V

    goto :goto_4

    :pswitch_1
    array-length p2, p1

    move p3, v3

    :goto_3
    if-ge p3, p2, :cond_5

    aget-object p4, p1, p3

    invoke-static {p4}, Lmb/o;->c(Ljava/lang/String;)S

    move-result p4

    add-int/2addr v2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v2}, Lmb/a7;->r2(I)V

    invoke-virtual {p0, v3}, Lmb/a7;->r2(I)V

    :goto_4
    :pswitch_2
    const-string p1, "V"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, v0}, Lmb/n;->m(Ljava/lang/String;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s2(I)V
    .locals 5

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    int-to-byte p1, p1

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lmb/n;->c(I)I

    move-result v3

    iget-object p0, p0, Lmb/n;->d:[B

    add-int/lit8 v4, v3, 0x1

    aput-byte v0, p0, v3

    add-int/lit8 v0, v3, 0x2

    aput-byte v1, p0, v4

    add-int/lit8 v3, v3, 0x3

    aput-byte v2, p0, v0

    aput-byte p1, p0, v3

    return-void
.end method

.method public final t(Lmb/r2;)V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p1, Lmb/r2;->g:Lmb/q2;

    iget-object v4, v3, Lmb/q2;->c:[Lmb/p2;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v5, v4, v2

    array-length v4, v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v2, v4, :cond_0

    iget-boolean v3, v3, Lmb/q2;->d:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    invoke-virtual {p0, v5, v6}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object v3

    iget-object v4, v5, Lmb/p2;->e:Ljava/lang/String;

    iget-object v5, v3, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {p0, v5, v4}, Lmb/a7;->i(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v5

    iput-object v5, v3, Lmb/g3;->c:Lmb/j3;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Redefinition of parameter \""

    const-string v1, "\""

    invoke-static {v0, v4, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    instance-of v1, p1, Lmb/s1;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lmb/s1;

    iget-object v1, v1, Lmb/s1;->l:Lmb/t1;

    if-eqz v1, :cond_3

    iput-object v0, v1, Lmb/t1;->e:Ljava/util/Map;

    :cond_3
    iget-object p1, p1, Lmb/r2;->i:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/f1;

    invoke-virtual {p0, v1, v0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final t0(Lmb/y4;I)V
    .locals 3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p2}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object p2

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v1

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v2

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-interface {p2}, Lorg/codehaus/janino/util/r0;->b()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5b

    goto :goto_0

    :cond_0
    const/16 p1, 0x5e

    :goto_0
    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1, p2}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1, v2}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1, v1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0, p2}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :cond_2
    invoke-virtual {p0, p1}, Lmb/a7;->s0(Lmb/y4;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lmb/a7;->q0(Lmb/k3;)V

    return-void
.end method

.method public final t1(Lmb/k3;Lmb/a5;Lmb/y4;Lmb/b0;[Lmb/y4;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p5

    move-object/from16 v3, p4

    check-cast v3, Lmb/x;

    iget-object v4, v3, Lmb/x;->a:[Lmb/f6;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lmb/x;->h()[Lmb/f6;

    move-result-object v4

    iput-object v4, v3, Lmb/x;->a:[Lmb/f6;

    :goto_0
    array-length v5, v4

    if-eqz v5, :cond_22

    invoke-virtual {v0, v1, v4, v7, v6}, Lmb/a7;->C0(Lmb/k3;[Lmb/t;[Lmb/y4;Lmb/a5;)Lmb/t;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lmb/f6;

    invoke-virtual {v8}, Lmb/t;->g()[Lmb/x;

    move-result-object v4

    array-length v5, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v5, :cond_1

    aget-object v11, v4, v10

    invoke-virtual {v0, v1, v11, v6}, Lmb/a7;->y(Lmb/k3;Lmb/b0;Lmb/a5;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    instance-of v4, v6, Lmb/k2;

    const/4 v10, 0x1

    if-eqz v4, :cond_4

    move-object v4, v6

    check-cast v4, Lmb/e5;

    iget-object v4, v4, Lmb/e5;->c:Lmb/a5;

    instance-of v4, v4, Lmb/f2;

    if-eqz v4, :cond_4

    move-object v4, v6

    check-cast v4, Lmb/k2;

    iget-object v5, v4, Lmb/e5;->c:Lmb/a5;

    check-cast v5, Lmb/f2;

    iget-object v4, v4, Lmb/k2;->g:[Lmb/z5;

    array-length v11, v4

    if-eq v11, v10, :cond_2

    goto :goto_3

    :cond_2
    aget-object v4, v4, v9

    iget-object v4, v4, Lmb/z5;->c:Ljava/lang/String;

    invoke-interface {v5}, Lmb/f2;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v9

    move v13, v12

    :goto_2
    if-ge v13, v11, :cond_4

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lmb/e2;

    iget-object v14, v14, Lmb/e2;->l:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v0, v1, v4}, Lmb/a7;->l0(Lmb/k3;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v12}, Lmb/a7;->j0(Lmb/k3;I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v11, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lmb/x;->v()Lmb/x;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lmb/x;

    invoke-virtual {v4, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Type of enclosing instance (\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\") is not assignable to \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v11

    :cond_6
    :goto_4
    invoke-virtual {v3}, Lmb/x;->z()[Lmb/s;

    move-result-object v12

    move-object v2, v6

    :goto_5
    instance-of v3, v2, Lmb/u5;

    if-nez v3, :cond_7

    invoke-interface {v2}, Lmb/a5;->b()Lmb/a5;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v13, v2

    check-cast v13, Lmb/u5;

    invoke-interface {v13}, Lmb/u5;->g()Lmb/v5;

    move-result-object v2

    instance-of v3, v2, Lmb/e0;

    if-nez v3, :cond_9

    array-length v4, v12

    if-gtz v4, :cond_8

    goto :goto_6

    :cond_8
    new-instance v0, Lhb/b;

    invoke-interface {v1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v1

    const-string v2, "SNO: Target class has synthetic fields"

    invoke-direct {v0, v1, v2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_6
    if-eqz v3, :cond_1c

    move-object v14, v2

    check-cast v14, Lmb/e0;

    array-length v15, v12

    move v2, v9

    :goto_7
    if-ge v2, v15, :cond_1c

    aget-object v3, v12, v2

    invoke-virtual {v3}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "val$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move v3, v9

    move/from16 p4, v10

    move-object/from16 v16, v11

    move v10, v2

    goto/16 :goto_10

    :cond_a
    iget-object v4, v14, Lmb/e0;->k:Ljava/util/TreeMap;

    invoke-virtual {v3}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/s;

    const/4 v5, 0x4

    if-eqz v4, :cond_f

    move/from16 p4, v10

    instance-of v10, v13, Lmb/u3;

    if-eqz v10, :cond_b

    invoke-virtual {v0, v14}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v9}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    move v3, v2

    iget-object v2, v4, Lmb/s;->a:Lmb/x;

    move v5, v3

    invoke-virtual {v4}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v3

    move-object v10, v4

    invoke-virtual {v10}, Lmb/s;->e()Lmb/x;

    move-result-object v4

    invoke-virtual {v10}, Lmb/s;->f()Z

    move-result v10

    move/from16 v21, v10

    move v10, v5

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lmb/a7;->c1(Lmb/k3;Lmb/x;Ljava/lang/String;Lmb/x;Z)V

    move v3, v9

    move-object/from16 v16, v11

    goto/16 :goto_10

    :cond_b
    move v10, v2

    instance-of v2, v13, Lmb/s1;

    const-string v4, "\" declared in an enclosing block because none of the methods accesses it. As a workaround, declare a dummy method that accesses the local variable."

    if-eqz v2, :cond_d

    move-object v2, v13

    check-cast v2, Lmb/s1;

    iget-object v2, v2, Lmb/s1;->m:Ljava/util/HashMap;

    move-object/from16 v16, v11

    invoke-virtual {v3}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/g3;

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1, v2}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    move v3, v9

    goto/16 :goto_10

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Compiler limitation: Constructor cannot access local variable \""

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_d
    move-object/from16 v16, v11

    instance-of v2, v13, Lmb/k2;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Compiler limitation: Field initializers cannot access local variable \""

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_f
    move/from16 p4, v10

    move-object/from16 v16, v11

    move v10, v2

    invoke-virtual {v3}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v6

    :goto_8
    instance-of v5, v4, Lmb/f1;

    if-eqz v5, :cond_18

    move-object v5, v4

    check-cast v5, Lmb/f1;

    invoke-interface {v5}, Lmb/f1;->b()Lmb/a5;

    move-result-object v11

    instance-of v9, v11, Lmb/e1;

    if-eqz v9, :cond_10

    check-cast v11, Lmb/e1;

    iget-object v9, v11, Lmb/e1;->e:Ljava/util/ArrayList;

    goto :goto_9

    :cond_10
    instance-of v9, v11, Lmb/r2;

    if-eqz v9, :cond_16

    check-cast v11, Lmb/r2;

    iget-object v9, v11, Lmb/r2;->i:Ljava/util/List;

    :goto_9
    if-eqz v9, :cond_11

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmb/f1;

    if-ne v11, v5, :cond_12

    :cond_11
    move-object/from16 p3, v3

    move-object/from16 v17, v4

    goto :goto_c

    :cond_12
    move-object/from16 p3, v3

    instance-of v3, v11, Lmb/i3;

    if-eqz v3, :cond_14

    check-cast v11, Lmb/i3;

    iget-object v3, v11, Lmb/i3;->g:[Lmb/z5;

    move-object/from16 v17, v4

    array-length v4, v3

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v4, :cond_15

    move/from16 v19, v3

    aget-object v3, v18, v19

    move/from16 v20, v4

    iget-object v4, v3, Lmb/z5;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v0, v11, v3}, Lmb/a7;->O0(Lmb/i3;Lmb/z5;)Lmb/g3;

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_f

    :cond_13
    add-int/lit8 v3, v19, 0x1

    move/from16 v4, v20

    goto :goto_b

    :cond_14
    move-object/from16 v17, v4

    :cond_15
    move-object/from16 v3, p3

    move-object/from16 v4, v17

    goto :goto_a

    :cond_16
    move-object/from16 p3, v3

    move-object/from16 v17, v4

    instance-of v3, v11, Lmb/n2;

    if-eqz v3, :cond_17

    check-cast v11, Lmb/n2;

    iget-object v3, v11, Lmb/n2;->h:Lmb/p2;

    iget-object v4, v3, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object v2

    move v3, v4

    goto :goto_f

    :cond_17
    :goto_c
    invoke-interface/range {v17 .. v17}, Lmb/a5;->b()Lmb/a5;

    move-result-object v4

    move-object/from16 v3, p3

    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_18
    move-object/from16 p3, v3

    move-object/from16 v17, v4

    :goto_d
    instance-of v3, v4, Lmb/r2;

    if-nez v3, :cond_19

    invoke-interface {v4}, Lmb/a5;->b()Lmb/a5;

    move-result-object v4

    goto :goto_d

    :cond_19
    check-cast v4, Lmb/r2;

    iget-object v3, v4, Lmb/r2;->g:Lmb/q2;

    iget-object v3, v3, Lmb/q2;->c:[Lmb/p2;

    array-length v5, v3

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v5, :cond_1b

    aget-object v11, v3, v9

    move-object/from16 v17, v3

    iget-object v3, v11, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v3}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object v2

    :goto_f
    invoke-virtual {v0, v1, v2}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    :goto_10
    add-int/lit8 v2, v10, 0x1

    move/from16 v10, p4

    move v9, v3

    move-object/from16 v11, v16

    goto/16 :goto_7

    :cond_1a
    const/4 v3, 0x0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v17

    goto :goto_e

    :cond_1b
    new-instance v0, Lhb/b;

    iget-object v1, v4, Lmb/m3;->a:Lhb/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SNO: Synthetic field \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" neither maps a synthetic field of an enclosing instance nor a local variable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_1c
    move v3, v9

    move/from16 p4, v10

    invoke-virtual {v8}, Lmb/t;->e()[Lmb/x;

    move-result-object v2

    array-length v4, v7

    invoke-virtual {v8}, Lmb/t;->j()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-boolean v5, v8, Lmb/t;->a:Z

    if-eqz v5, :cond_20

    array-length v5, v2

    new-array v6, v5, [Lmb/y4;

    array-length v9, v2

    sub-int/2addr v4, v9

    add-int/lit8 v9, v4, 0x1

    new-array v10, v9, [Lmb/y4;

    array-length v11, v2

    add-int/lit8 v11, v11, -0x1

    move v12, v11

    move v11, v3

    :goto_11
    if-ge v11, v9, :cond_1d

    aget-object v13, v7, v12

    aput-object v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_1d
    array-length v11, v2

    add-int/lit8 v11, v11, -0x2

    :goto_12
    if-ltz v11, :cond_1e

    aget-object v12, v7, v11

    aput-object v12, v6, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_12

    :cond_1e
    if-nez v9, :cond_1f

    move-object v4, v1

    goto :goto_13

    :cond_1f
    aget-object v4, v10, v4

    :goto_13
    invoke-interface {v4}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v4

    add-int/lit8 v5, v5, -0x1

    new-instance v7, Lmb/g4;

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v2, v9

    new-instance v11, Lmb/w0;

    invoke-direct {v11, v4, v10}, Lmb/w0;-><init>(Lhb/c;[Lmb/x0;)V

    invoke-direct {v7, v4, v9, v11}, Lmb/g4;-><init>(Lhb/c;Lmb/x;Lmb/w0;)V

    aput-object v7, v6, v5

    goto :goto_14

    :cond_20
    move-object v6, v7

    :goto_14
    move v9, v3

    :goto_15
    array-length v3, v6

    if-ge v9, v3, :cond_21

    aget-object v3, v6, v9

    invoke-virtual {v0, v3}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v3

    aget-object v4, v2, v9

    aget-object v5, v6, v9

    invoke-virtual {v0, v5}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_21
    iget-object v3, v8, Lmb/t;->e:Lmb/x;

    invoke-virtual {v8}, Lmb/t;->c()Lmb/c6;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0xb7

    const-string v4, "<init>"

    invoke-virtual/range {v0 .. v6}, Lmb/a7;->s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V

    return-void

    :cond_22
    new-instance v0, Lhb/b;

    invoke-interface/range {p1 .. p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SNO: Target class \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" has no constructors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final t2(S)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lmb/a7;->q2(I)V

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    return-void

    :cond_0
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lmb/a7;->q2(I)V

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    return-void
.end method

.method public final u(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lmb/a7;->h2(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmb/a7;->i2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p0, p2, p3}, Lmb/a7;->B1(Lmb/b0;Lmb/b0;)Z

    move-result p4

    if-eqz p4, :cond_0

    check-cast p3, Lmb/x;

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 p1, 0xc0

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Cast conversion not possible from type \""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" to type \""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final u0(Lmb/y4;)V
    .locals 3

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->f()Lmb/k;

    move-result-object v0

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    iget-object v1, v1, Lmb/n;->g:Lmb/h;

    iget-object v1, v1, Lmb/k;->d:Lmb/p6;

    invoke-virtual {p0, p1}, Lmb/a7;->N(Lmb/y4;)I

    invoke-virtual {p0, p1}, Lmb/a7;->T(Lmb/y4;)Lmb/b0;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->f()Lmb/k;

    move-result-object p1

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/k;->c:Lmb/k;

    invoke-virtual {v2, v0, p1}, Lmb/n;->o(Lmb/k;Lmb/k;)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iput-object v1, p0, Lmb/k;->d:Lmb/p6;

    return-void
.end method

.method public final u1(Lmb/k3;Lmb/v;)V
    .locals 9

    invoke-virtual {p0}, Lmb/a7;->V0()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    invoke-virtual {p2}, Lmb/v;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lmb/t;->e:Lmb/x;

    invoke-virtual {v0}, Lmb/x;->G()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Invocation of static interface methods only available for target version 8+"

    invoke-interface {p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lmb/v;->n()Z

    move-result v0

    iget-object v1, p2, Lmb/t;->e:Lmb/x;

    if-eqz v0, :cond_2

    const/16 v0, 0xb8

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lmb/x;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb9

    goto :goto_1

    :cond_3
    const/16 v0, 0xb6

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Lmb/x;->G()Z

    move-result v8

    iget-object v5, p2, Lmb/t;->e:Lmb/x;

    invoke-virtual {p2}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lmb/t;->c()Lmb/c6;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lmb/a7;->s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V

    return-void
.end method

.method public final u2(Lmb/k;Lmb/k;)V
    .locals 3

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lmb/g;

    invoke-direct {v0, p0}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v0}, Lmb/k;->a()V

    iget-object v1, p0, Lmb/n;->l:Ljava/util/ArrayList;

    new-instance v2, Lmb/l;

    invoke-direct {v2, p0, v0, p1, p2}, Lmb/l;-><init>(Lmb/n;Lmb/g;Lmb/k;Lmb/k;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmb/n;->c(I)I

    return-void
.end method

.method public final v(Lmb/u;Lmb/a5;Lhb/c;)V
    .locals 3

    invoke-interface {p1}, Lmb/u;->a()Lmb/x;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmb/a7;->r1(Lmb/x;Lmb/a5;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-interface {p1}, Lmb/u;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lmb/a7;->q1(Lmb/x;ILmb/a5;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0, p3, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2
.end method

.method public final v1(Lmb/u;Lmb/a5;)Z
    .locals 2

    invoke-interface {p1}, Lmb/u;->a()Lmb/x;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmb/a7;->r1(Lmb/x;Lmb/a5;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lmb/u;->b()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lmb/a7;->q1(Lmb/x;ILmb/a5;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v2(I)V
    .locals 3

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    int-to-byte p1, p1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmb/n;->c(I)I

    move-result v1

    iget-object p0, p0, Lmb/n;->d:[B

    add-int/lit8 v2, v1, 0x1

    aput-byte v0, p0, v1

    aput-byte p1, p0, v2

    return-void

    :cond_0
    new-instance p0, Lhb/b;

    const-string p1, "Short value out of legal range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w(Lhb/c;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lmb/a7;->U0(Lhb/c;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Package member type declaration \""

    const-string v2, "\" conflicts with single-type-import \""

    invoke-static {v1, p2, v2}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "."

    array-length v2, v0

    invoke-static {v2, v1, v0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final w0(Lmb/b0;Lmb/z2;)Lmb/v;
    .locals 6

    check-cast p1, Lmb/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Lmb/z2;->f:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lmb/a7;->L0(Lmb/x;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lmb/x;->G()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmb/a7;->h:Lmb/b;

    iget-object p1, p1, Lmb/a0;->n:Lmb/x;

    invoke-virtual {p1, v1}, Lmb/x;->k(Ljava/lang/String;)[Lmb/v;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lmb/v;->n()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lmb/u;->b()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lmb/v;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmb/v;

    iget-object v0, p2, Lmb/z2;->g:[Lmb/y4;

    iget-object v1, p2, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {p0, p2, p1, v0, v1}, Lmb/a7;->C0(Lmb/k3;[Lmb/t;[Lmb/y4;Lmb/a5;)Lmb/t;

    move-result-object p0

    check-cast p0, Lmb/v;

    return-object p0
.end method

.method public final w1(Lmb/b0;)Lmb/x;
    .locals 1

    sget-object v0, Lmb/x;->D:Lmb/w;

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lmb/a0;->c:Lmb/x;

    return-object p0

    :cond_0
    sget-object v0, Lmb/x;->w:Lmb/w;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lmb/a0;->d:Lmb/x;

    return-object p0

    :cond_1
    sget-object v0, Lmb/x;->x:Lmb/w;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lmb/a0;->e:Lmb/x;

    return-object p0

    :cond_2
    sget-object v0, Lmb/x;->C:Lmb/w;

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lmb/a0;->q:Lmb/x;

    return-object p0

    :cond_3
    sget-object v0, Lmb/x;->A:Lmb/w;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lmb/a0;->k:Lmb/x;

    return-object p0

    :cond_4
    sget-object v0, Lmb/x;->B:Lmb/w;

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lmb/a0;->m:Lmb/x;

    return-object p0

    :cond_5
    sget-object v0, Lmb/x;->z:Lmb/w;

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lmb/a0;->j:Lmb/x;

    return-object p0

    :cond_6
    sget-object v0, Lmb/x;->y:Lmb/w;

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lmb/a0;->g:Lmb/x;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final w2(Lmb/k3;Lmb/b0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    check-cast p2, Lmb/x;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    invoke-static {p2}, Lmb/a7;->j1(Lmb/x;)I

    move-result p1

    add-int/lit8 p1, p1, 0x2e

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->m(Ljava/lang/String;)V

    return-void
.end method

.method public final x(Lmb/p4;)V
    .locals 4

    invoke-interface {p1}, Lmb/p4;->o()Lmb/q1;

    move-result-object v0

    invoke-interface {p1}, Lmb/c4;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/q1;->i(Ljava/lang/String;)Lmb/p4;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Redeclaration of type \""

    const-string v3, "\", previously declared in "

    invoke-static {v2, v1, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Lmb/m0;

    iget-object v0, v0, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lmb/m0;

    iget-object p1, p1, Lmb/m0;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final x0(Lmb/v3;)Lmb/v;
    .locals 6

    iget-object v0, p1, Lmb/v3;->h:Lmb/c1;

    iget-object v1, p1, Lmb/z2;->g:[Lmb/y4;

    iget-object v2, p1, Lmb/z2;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    :goto_0
    instance-of v3, v0, Lmb/q1;

    if-nez v3, :cond_2

    instance-of v3, v0, Lmb/v5;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lmb/v5;

    invoke-virtual {p0, v3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lmb/a7;->w0(Lmb/b0;Lmb/z2;)Lmb/v;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lmb/a7;->W0(Lmb/c1;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmb/a7;->w0(Lmb/b0;Lmb/z2;)Lmb/v;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lmb/a7;->k1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lkb/a;

    const-class v4, Lmb/v;

    invoke-direct {v3, v4, v0}, Lkb/a;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v3}, Lb6/g;->I(Lkb/a;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/v;

    array-length v3, v0

    if-lez v3, :cond_3

    iget-object v2, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {p0, p1, v0, v1, v2}, Lmb/a7;->C0(Lmb/k3;[Lmb/t;[Lmb/y4;Lmb/a5;)Lmb/t;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lmb/v;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lmb/a7;->n1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lkb/a;

    invoke-direct {v3, v4, v0}, Lkb/a;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v3}, Lb6/g;->I(Lkb/a;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/v;

    array-length v3, v0

    if-lez v3, :cond_5

    iget-object v2, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {p0, p1, v0, v1, v2}, Lmb/a7;->C0(Lmb/k3;[Lmb/t;[Lmb/y4;Lmb/a5;)Lmb/t;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lmb/v;

    :goto_1
    invoke-virtual {v3}, Lmb/t;->g()[Lmb/x;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    iget-object v5, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {p0, p1, v4, v5}, Lmb/a7;->y(Lmb/k3;Lmb/b0;Lmb/a5;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    const-string v0, "A method named \""

    const-string v1, "\" is not declared in any enclosing class nor any supertype, nor through a static import"

    invoke-static {v0, v2, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y(Lmb/k3;Lmb/b0;Lmb/a5;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lmb/x;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lmb/a7;->h:Lmb/b;

    iget-object v4, v2, Lmb/a0;->u:Lmb/x;

    move-object v5, v1

    check-cast v5, Lmb/x;

    invoke-virtual {v4, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v2, Lmb/a0;->p:Lmb/x;

    invoke-virtual {v4, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v2, v2, Lmb/a0;->i:Lmb/x;

    invoke-virtual {v2, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    instance-of v4, v2, Lmb/r5;

    if-eqz v4, :cond_8

    move-object v4, v2

    check-cast v4, Lmb/r5;

    iget-object v4, v4, Lmb/r5;->g:Ljava/util/List;

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmb/l1;

    iget-object v9, v8, Lmb/l1;->c:Lmb/m1;

    iget-object v9, v9, Lmb/m1;->d:[Lmb/s5;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_6

    aget-object v12, v9, v11

    invoke-virtual {v0, v12}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v12

    check-cast v12, Lmb/x;

    invoke-virtual {v12, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    iput-boolean v14, v8, Lmb/l1;->f:Z

    return-void

    :cond_1
    invoke-virtual {v5, v12}, Lmb/x;->D(Lmb/x;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v7, :cond_4

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmb/l1;

    iget-object v15, v15, Lmb/l1;->c:Lmb/m1;

    iget-object v15, v15, Lmb/m1;->d:[Lmb/s5;

    const/16 v16, 0x0

    array-length v3, v15

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_3

    aget-object v14, v15, v6

    invoke-virtual {v0, v14}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v14

    check-cast v14, Lmb/x;

    invoke-virtual {v14, v12}, Lmb/x;->D(Lmb/x;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    move v3, v14

    const/16 v16, 0x0

    iput-boolean v3, v8, Lmb/l1;->f:Z

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    const/16 v16, 0x0

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    instance-of v3, v2, Lmb/r2;

    if-eqz v3, :cond_a

    check-cast v2, Lmb/r2;

    iget-object v2, v2, Lmb/r2;->h:[Lmb/s5;

    array-length v3, v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v3, :cond_b

    aget-object v4, v2, v6

    invoke-virtual {v0, v4}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v4

    check-cast v4, Lmb/x;

    invoke-virtual {v4, v5}, Lmb/x;->D(Lmb/x;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    instance-of v3, v2, Lmb/u5;

    if-nez v3, :cond_b

    :goto_7
    invoke-interface {v2}, Lmb/a5;->b()Lmb/a5;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thrown exception of type \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" is neither caught by a \"try...catch\" block nor declared in the \"throws\" clause of the declaring function"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_c
    :goto_8
    return-void

    :cond_d
    const/16 v16, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thrown object of type \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not assignable to \"Throwable\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lmb/k3;->getLocation()Lhb/c;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16
.end method

.method public final y0(Lmb/i5;)Lmb/v;
    .locals 6

    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    :goto_0
    instance-of v2, v0, Lmb/r2;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lmb/r2;

    instance-of v4, v2, Lmb/u3;

    if-eqz v4, :cond_1

    check-cast v2, Lmb/u3;

    invoke-virtual {v2}, Lmb/u3;->z()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Superclass method cannot be invoked in static context"

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_1
    instance-of v2, v0, Lmb/e0;

    if-eqz v2, :cond_5

    check-cast v0, Lmb/e0;

    invoke-virtual {p0, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v2

    invoke-virtual {v2}, Lmb/x;->x()Lmb/x;

    move-result-object v2

    const-string v4, "\""

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2, p1}, Lmb/a7;->w0(Lmb/b0;Lmb/z2;)Lmb/v;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmb/t;->g()[Lmb/x;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-object v5, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {p0, p1, v4, v5}, Lmb/a7;->y(Lmb/k3;Lmb/b0;Lmb/a5;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Class \""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" has no method named \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmb/z2;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_4
    new-instance p0, Lhb/a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" has no superclass"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final y1(Lmb/b0;)Z
    .locals 1

    instance-of v0, p1, Lmb/x;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lmb/w;->I()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final z(Lmb/b0;Lmb/b0;)Lmb/b0;
    .locals 6

    move-object v0, p1

    check-cast v0, Lmb/x;

    move-object v1, p2

    check-cast v1, Lmb/x;

    invoke-virtual {v0, v1}, Lmb/x;->D(Lmb/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lmb/x;->x()Lmb/x;

    move-result-object p1

    iget-object v1, p0, Lmb/a7;->h:Lmb/b;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p2}, Lmb/a7;->z(Lmb/b0;Lmb/b0;)Lmb/b0;

    move-result-object p1

    iget-object v2, v1, Lmb/a0;->n:Lmb/x;

    if-eq p1, v2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lmb/x;->t()[Lmb/x;

    move-result-object p1

    array-length v0, p1

    new-array v2, v0, [Lmb/b0;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v3, v0, :cond_4

    aget-object p1, v2, v3

    invoke-virtual {p0, p1, p2}, Lmb/a7;->z(Lmb/b0;Lmb/b0;)Lmb/b0;

    move-result-object p1

    iget-object v4, v1, Lmb/a0;->n:Lmb/x;

    if-eq p1, v4, :cond_3

    return-object p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, v1, Lmb/a0;->n:Lmb/x;

    return-object p0
.end method

.method public final z1(Lmb/w1;)Lmb/g3;
    .locals 3

    iget-object p1, p1, Lmb/w1;->h:Lmb/n3;

    instance-of v0, p1, Lmb/p0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lmb/p0;

    invoke-virtual {p0, p1}, Lmb/a7;->W1(Lmb/p0;)Lmb/c1;

    move-result-object p1

    instance-of v0, p1, Lmb/h3;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lmb/h3;

    iget-object v0, p1, Lmb/h3;->f:Lmb/g3;

    iget-boolean v2, v0, Lmb/g3;->a:Z

    if-nez v2, :cond_3

    iget-object p0, v0, Lmb/g3;->b:Lmb/b0;

    sget-object p1, Lmb/x;->A:Lmb/w;

    if-ne p0, p1, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const-string v0, "Must not increment or decrement \"final\" local variable"

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v1
.end method
