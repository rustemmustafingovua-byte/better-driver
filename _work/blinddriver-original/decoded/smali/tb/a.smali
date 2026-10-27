.class public final Ltb/a;
.super Le1/b;
.source "SourceFile"


# instance fields
.field public final b:[Lpb/a;

.field public final c:Lk0/l;

.field public d:Lg5/m;

.field public e:Z


# direct methods
.method public constructor <init>([Lpb/a;Lq3/k;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk0/l;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk0/l;-><init>(IZ)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lk0/l;->m:Ljava/lang/Object;

    iput-object p0, v0, Lk0/l;->n:Ljava/lang/Object;

    iput-object v0, p0, Ltb/a;->c:Lk0/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltb/a;->e:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x3

    aput v3, v2, v0

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_1

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v4

    const/4 v7, -0x1

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Ltb/a;->b:[Lpb/a;

    iput-object p2, p0, Le1/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static f(Lq3/k;Lpb/o;)V
    .locals 6

    iget-object p1, p1, Lpb/o;->l:[[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lq3/k;->k(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lq3/k;->k(II)I

    move-result v3

    if-ltz v1, :cond_0

    if-ltz v3, :cond_0

    aget-object v1, p1, v1

    aget v4, v1, v3

    if-ge v4, v2, :cond_0

    aput v2, v1, v3

    :cond_0
    invoke-virtual {p0}, Lq3/k;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, v2}, Lq3/k;->k(II)I

    move-result v1

    invoke-virtual {p0, v2, v2}, Lq3/k;->k(II)I

    move-result v3

    const/4 v4, 0x2

    if-ltz v1, :cond_1

    if-ltz v3, :cond_1

    aget-object v1, p1, v1

    aget v5, v1, v3

    if-ge v5, v4, :cond_1

    aput v4, v1, v3

    :cond_1
    invoke-virtual {p0, v0, v4}, Lq3/k;->k(II)I

    move-result v0

    invoke-virtual {p0, v2, v4}, Lq3/k;->k(II)I

    move-result p0

    if-ltz v0, :cond_2

    if-ltz p0, :cond_2

    aget-object p1, p1, v0

    aget v0, p1, p0

    if-ge v0, v4, :cond_2

    aput v4, p1, p0

    :cond_2
    return-void
.end method


# virtual methods
.method public final e(Lnb/d;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Lnb/d;->a:I

    iget-object v5, v1, Lnb/d;->c:[Lpb/a;

    if-ge v3, v4, :cond_8

    new-instance v4, Lpb/a;

    aget-object v6, v5, v3

    invoke-direct {v4, v6}, Lpb/a;-><init>(Lpb/a;)V

    aget-object v5, v5, v3

    iget-object v6, v1, Lnb/d;->b:[[Lpb/a;

    aget-object v6, v6, p3

    aget-object v7, v6, v2

    const/4 v8, 0x1

    aget-object v6, v6, v8

    iget-wide v9, v6, Lpb/a;->l:D

    iget-wide v11, v7, Lpb/a;->l:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    iget-wide v11, v6, Lpb/a;->m:D

    iget-wide v13, v7, Lpb/a;->m:D

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual {v5, v7}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v3

    const-wide/16 v9, 0x0

    :goto_1
    const-wide/16 v18, 0x0

    goto :goto_3

    :cond_0
    invoke-virtual {v5, v6}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    cmpl-double v6, v9, v11

    if-lez v6, :cond_1

    move v13, v3

    goto :goto_1

    :cond_1
    move v13, v3

    move-wide v9, v11

    goto :goto_1

    :cond_2
    move v13, v3

    iget-wide v2, v5, Lpb/a;->l:D

    move-wide/from16 v16, v9

    iget-wide v8, v7, Lpb/a;->l:D

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v8, v5, Lpb/a;->m:D

    const-wide/16 v18, 0x0

    iget-wide v14, v7, Lpb/a;->m:D

    sub-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v16, v11

    if-lez v10, :cond_3

    move-wide v10, v2

    goto :goto_2

    :cond_3
    move-wide v10, v8

    :goto_2
    cmpl-double v12, v10, v18

    if-nez v12, :cond_4

    invoke-virtual {v5, v7}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    goto :goto_3

    :cond_4
    move-wide v9, v10

    :goto_3
    cmpl-double v2, v9, v18

    if-nez v2, :cond_6

    invoke-virtual {v5, v7}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v8, 0x1

    :goto_5
    const-string v2, "Bad distance calculation"

    invoke-static {v2, v8}, Ly4/s;->w(Ljava/lang/String;Z)V

    add-int/lit8 v2, p2, 0x1

    iget-object v3, v0, Ltb/a;->b:[Lpb/a;

    array-length v5, v3

    if-ge v2, v5, :cond_7

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Lpb/a;->i(Lpb/a;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-wide/from16 v14, v18

    goto :goto_6

    :cond_7
    move/from16 v2, p2

    move-wide v14, v9

    :goto_6
    iget-object v3, v0, Ltb/a;->c:Lk0/l;

    invoke-virtual {v3, v4, v2, v14, v15}, Lk0/l;->e(Lpb/a;ID)V

    add-int/lit8 v3, v13, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Ltb/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ltb/a;

    iget-object p1, p1, Ltb/a;->b:[Lpb/a;

    iget-object p0, p0, Ltb/a;->b:[Lpb/a;

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    array-length v0, p0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_5

    aget-object v6, p0, v3

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lpb/a;->i(Lpb/a;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v1

    :cond_2
    aget-object v6, p0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lpb/a;->i(Lpb/a;)Z

    move-result v6

    if-nez v6, :cond_3

    move v5, v1

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-object p0, p0, Ltb/a;->b:[Lpb/a;

    array-length v0, p0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v3, p0, v2

    array-length v4, p0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Lpb/a;->a(Lpb/a;)I

    move-result v6

    if-ne v5, v6, :cond_0

    array-length v3, p0

    sub-int/2addr v3, v5

    aget-object v3, p0, v3

    aget-object v4, p0, v2

    :cond_0
    mul-int/2addr v0, v1

    invoke-virtual {v3}, Lpb/a;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    mul-int/2addr p0, v1

    invoke-virtual {v4}, Lpb/a;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "edge null: LINESTRING ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ltb/a;->b:[Lpb/a;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v1

    iget-wide v4, v4, Lpb/a;->l:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v1

    iget-wide v4, v2, Lpb/a;->m:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ")  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Lq3/k;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
