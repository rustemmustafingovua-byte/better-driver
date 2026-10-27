.class public abstract Lg5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/util/List;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final B(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final C(FFF)F
    .locals 1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public static final D(FII)I
    .locals 4

    sub-int/2addr p2, p1

    int-to-double v0, p2

    float-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static E(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static varargs F([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Lu8/l;->b0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public static varargs G([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lu8/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lu8/j;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static final H(Ljava/util/List;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public static I(ILjava/lang/String;)J
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, v0}, Lg5/f;->t(IILjava/lang/String;Z)I

    move-result v1

    sget-object v2, Lla/m;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v3, -0x1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v1, p0, :cond_4

    add-int/lit8 v12, v1, 0x1

    invoke-static {v12, p0, p1, v11}, Lg5/f;->t(IILjava/lang/String;Z)I

    move-result v12

    invoke-virtual {v2, v1, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const-string v1, "group(...)"

    if-ne v5, v3, :cond_0

    sget-object v13, Lla/m;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_0
    if-ne v6, v3, :cond_1

    sget-object v10, Lla/m;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_1
    if-ne v7, v3, :cond_2

    sget-object v10, Lla/m;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "US"

    invoke-static {v1, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "toLowerCase(...)"

    invoke-static {v1, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    const-string v10, "pattern(...)"

    invoke-static {v7, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x6

    invoke-static {v7, v1, v0, v0, v10}, Lr9/k;->e0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    div-int/lit8 v7, v1, 0x4

    goto :goto_1

    :cond_2
    if-ne v4, v3, :cond_3

    sget-object v10, Lla/m;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    invoke-static {v12, p0, p1, v0}, Lg5/f;->t(IILjava/lang/String;Z)I

    move-result v1

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0x46

    if-gt p0, v4, :cond_5

    const/16 p1, 0x64

    if-ge v4, p1, :cond_5

    add-int/lit16 v4, v4, 0x76c

    :cond_5
    if-ltz v4, :cond_6

    if-ge v4, p0, :cond_6

    add-int/lit16 v4, v4, 0x7d0

    :cond_6
    const/16 p0, 0x641

    const-string p1, "Failed requirement."

    if-lt v4, p0, :cond_c

    if-eq v7, v3, :cond_b

    if-gt v11, v6, :cond_a

    const/16 p0, 0x20

    if-ge v6, p0, :cond_a

    if-ltz v5, :cond_9

    const/16 p0, 0x18

    if-ge v5, p0, :cond_9

    if-ltz v8, :cond_8

    const/16 p0, 0x3c

    if-ge v8, p0, :cond_8

    if-ltz v9, :cond_7

    if-ge v9, p0, :cond_7

    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lma/e;->a:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p0, v11, v4}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v7, v11

    invoke-virtual {p0, v10, v7}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final J([F[FI[F)V
    .locals 16

    move/from16 v0, p2

    if-nez v0, :cond_0

    const-string v1, "At least one point must be provided"

    invoke-static {v1}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [[F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    new-array v6, v0, [F

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v5, v0, :cond_4

    aget-object v7, v3, v4

    aput v6, v7, v5

    const/4 v6, 0x1

    :goto_2
    if-ge v6, v2, :cond_3

    add-int/lit8 v7, v6, -0x1

    aget-object v7, v3, v7

    aget v7, v7, v5

    aget v8, p0, v5

    mul-float/2addr v7, v8

    aget-object v8, v3, v6

    aput v7, v8, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-array v5, v2, [[F

    move v7, v4

    :goto_3
    if-ge v7, v2, :cond_5

    new-array v8, v0, [F

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    new-array v7, v2, [[F

    move v8, v4

    :goto_4
    if-ge v8, v2, :cond_6

    new-array v9, v2, [F

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    move v8, v4

    :goto_5
    if-ge v8, v2, :cond_d

    aget-object v9, v5, v8

    aget-object v10, v3, v8

    const-string v11, "<this>"

    invoke-static {v10, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "destination"

    invoke-static {v9, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v4, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v10, v4

    :goto_6
    if-ge v10, v8, :cond_8

    aget-object v11, v5, v10

    invoke-static {v9, v11}, Lg5/f;->u([F[F)F

    move-result v12

    move v13, v4

    :goto_7
    if-ge v13, v0, :cond_7

    aget v14, v9, v13

    aget v15, v11, v13

    mul-float/2addr v15, v12

    sub-float/2addr v14, v15

    aput v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    invoke-static {v9, v9}, Lg5/f;->u([F[F)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x358637bd    # 1.0E-6f

    cmpg-float v12, v10, v11

    if-gez v12, :cond_9

    move v10, v11

    :cond_9
    div-float v10, v6, v10

    move v11, v4

    :goto_8
    if-ge v11, v0, :cond_a

    aget v12, v9, v11

    mul-float/2addr v12, v10

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_a
    aget-object v10, v7, v8

    move v11, v4

    :goto_9
    if-ge v11, v2, :cond_c

    if-ge v11, v8, :cond_b

    const/4 v12, 0x0

    goto :goto_a

    :cond_b
    aget-object v12, v3, v11

    invoke-static {v9, v12}, Lg5/f;->u([F[F)F

    move-result v12

    :goto_a
    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_d
    move v0, v1

    :goto_b
    const/4 v2, -0x1

    if-ge v2, v0, :cond_f

    aget-object v2, v5, v0

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lg5/f;->u([F[F)F

    move-result v2

    aget-object v4, v7, v0

    add-int/lit8 v6, v0, 0x1

    if-gt v6, v1, :cond_e

    move v8, v1

    :goto_c
    aget v9, v4, v8

    aget v10, p3, v8

    mul-float/2addr v9, v10

    sub-float/2addr v2, v9

    if-eq v8, v6, :cond_e

    add-int/lit8 v8, v8, -0x1

    goto :goto_c

    :cond_e
    aget v4, v4, v0

    div-float/2addr v2, v4

    aput v2, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_f
    return-void
.end method

.method public static final K(Landroid/view/ViewStructure;Le2/g0;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ln2/b;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lm2/t;->a:Lm2/w;

    sget-object v2, Lm2/l;->a:Lm2/w;

    invoke-virtual {v1}, Le2/g0;->x()Lm2/m;

    move-result-object v2

    const/4 v8, 0x2

    const/16 v11, 0x8

    if-eqz v2, :cond_15

    iget-object v2, v2, Lm2/m;->l:Lk/m0;

    if-eqz v2, :cond_15

    iget-object v15, v2, Lk/m0;->b:[Ljava/lang/Object;

    const-wide/16 v16, 0x80

    iget-object v3, v2, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v2, v2, Lk/m0;->a:[J

    array-length v4, v2

    sub-int/2addr v4, v8

    move/from16 v31, v8

    if-ltz v4, :cond_13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v18, 0xff

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x7

    :goto_0
    aget-wide v7, v2, v5

    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v9, v7

    shl-long v9, v9, v30

    and-long/2addr v9, v7

    and-long v9, v9, v32

    cmp-long v9, v9, v32

    if-eqz v9, :cond_12

    sub-int v9, v5, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_11

    and-long v34, v7, v18

    cmp-long v34, v34, v16

    if-gez v34, :cond_f

    shl-int/lit8 v34, v5, 0x3

    add-int v34, v34, v10

    aget-object v35, v15, v34

    aget-object v12, v3, v34

    move-object/from16 v13, v35

    check-cast v13, Lm2/w;

    move/from16 v35, v11

    sget-object v11, Lm2/t;->r:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.autofill.ContentDataType"

    invoke-static {v12, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v12

    check-cast v6, Lg1/d;

    goto/16 :goto_2

    :cond_0
    sget-object v11, Lm2/t;->a:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v12, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/util/List;

    invoke-static {v12}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_10

    invoke-virtual {v0, v11}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    sget-object v11, Lm2/t;->q:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "null cannot be cast to non-null type androidx.compose.ui.autofill.ContentType"

    invoke-static {v12, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v12

    check-cast v24, Lg1/m;

    goto/16 :goto_2

    :cond_2
    sget-object v11, Lm2/t;->s:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "null cannot be cast to non-null type androidx.compose.ui.autofill.AndroidFillableData"

    invoke-static {v12, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v12

    check-cast v23, Lg1/f;

    goto/16 :goto_2

    :cond_3
    sget-object v11, Lm2/t;->F:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "null cannot be cast to non-null type androidx.compose.ui.text.AnnotatedString"

    invoke-static {v12, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v12

    check-cast v22, Lp2/g;

    goto/16 :goto_2

    :cond_4
    sget-object v11, Lm2/t;->k:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const-string v14, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v11, :cond_5

    invoke-static {v12, v14}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/ViewStructure;->setFocused(Z)V

    goto/16 :goto_2

    :cond_5
    sget-object v11, Lm2/t;->O:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v12, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v29, v12

    check-cast v29, Ljava/lang/Integer;

    goto/16 :goto_2

    :cond_6
    sget-object v11, Lm2/t;->K:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v27, 0x1

    goto/16 :goto_2

    :cond_7
    sget-object v11, Lm2/t;->n:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v12, v14}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    goto/16 :goto_2

    :cond_8
    sget-object v11, Lm2/t;->y:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "null cannot be cast to non-null type androidx.compose.ui.semantics.Role"

    invoke-static {v12, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v26, v12

    check-cast v26, Lm2/h;

    goto :goto_2

    :cond_9
    sget-object v11, Lm2/t;->I:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v12, v14}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v12

    check-cast v25, Ljava/lang/Boolean;

    goto :goto_2

    :cond_a
    sget-object v11, Lm2/t;->J:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "null cannot be cast to non-null type androidx.compose.ui.state.ToggleableState"

    invoke-static {v12, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v21, v12

    check-cast v21, Lo2/a;

    goto :goto_2

    :cond_b
    sget-object v11, Lm2/l;->b:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/view/ViewStructure;->setClickable(Z)V

    goto :goto_2

    :cond_c
    const/4 v11, 0x1

    sget-object v12, Lm2/l;->c:Lm2/w;

    invoke-static {v13, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v0, v11}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    goto :goto_2

    :cond_d
    sget-object v12, Lm2/l;->w:Lm2/w;

    invoke-static {v13, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v0, v11}, Landroid/view/ViewStructure;->setFocusable(Z)V

    goto :goto_2

    :cond_e
    sget-object v11, Lm2/l;->k:Lm2/w;

    invoke-static {v13, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/16 v20, 0x1

    goto :goto_2

    :cond_f
    move/from16 v35, v11

    :cond_10
    :goto_2
    shr-long v7, v7, v35

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v35

    goto/16 :goto_1

    :cond_11
    move v7, v11

    if-ne v9, v7, :cond_14

    :cond_12
    if-eq v5, v4, :cond_14

    add-int/lit8 v5, v5, 0x1

    const/16 v11, 0x8

    goto/16 :goto_0

    :cond_13
    const-wide/16 v18, 0xff

    const/16 v30, 0x7

    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    :cond_14
    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v26

    move/from16 v11, v28

    goto :goto_3

    :cond_15
    move/from16 v31, v8

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const/16 v30, 0x7

    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_3
    invoke-virtual {v1}, Le2/g0;->x()Lm2/m;

    move-result-object v7

    if-eqz v7, :cond_19

    iget-boolean v8, v7, Lm2/m;->n:Z

    if-eqz v8, :cond_19

    iget-boolean v8, v7, Lm2/m;->o:Z

    if-eqz v8, :cond_16

    goto :goto_5

    :cond_16
    invoke-virtual {v7}, Lm2/m;->b()Lm2/m;

    move-result-object v7

    new-instance v8, Lk/h0;

    invoke-virtual {v1}, Le2/g0;->n()Ljava/util/List;

    move-result-object v9

    check-cast v9, Lk/f0;

    iget-object v9, v9, Lk/f0;->m:Ljava/lang/Object;

    check-cast v9, Lt0/b;

    iget v9, v9, Lt0/b;->n:I

    invoke-direct {v8, v9}, Lk/h0;-><init>(I)V

    invoke-virtual {v1}, Le2/g0;->n()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lk/h0;->b(Ljava/util/List;)V

    :cond_17
    :goto_4
    invoke-virtual {v8}, Lk/h0;->i()Z

    move-result v9

    if-eqz v9, :cond_19

    iget v9, v8, Lk/h0;->b:I

    const/16 v36, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lk/h0;->k(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le2/g0;

    invoke-virtual {v9}, Le2/g0;->x()Lm2/m;

    move-result-object v10

    if-eqz v10, :cond_17

    iget-boolean v12, v10, Lm2/m;->n:Z

    if-eqz v12, :cond_18

    goto :goto_4

    :cond_18
    invoke-virtual {v7, v10}, Lm2/m;->d(Lm2/m;)V

    iget-boolean v10, v10, Lm2/m;->o:Z

    if-nez v10, :cond_17

    invoke-virtual {v9}, Le2/g0;->n()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lk/h0;->b(Ljava/util/List;)V

    goto :goto_4

    :cond_19
    :goto_5
    if-eqz v7, :cond_1f

    iget-object v7, v7, Lm2/m;->l:Lk/m0;

    if-eqz v7, :cond_1f

    iget-object v8, v7, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v9, v7, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v7, v7, Lk/m0;->a:[J

    array-length v10, v7

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_1f

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    aget-wide v14, v7, v12

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    not-long v7, v14

    shl-long v7, v7, v30

    and-long/2addr v7, v14

    and-long v7, v7, v32

    cmp-long v7, v7, v32

    if-eqz v7, :cond_1e

    sub-int v7, v12, v10

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v35, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_1d

    and-long v37, v14, v18

    cmp-long v23, v37, v16

    if-gez v23, :cond_1c

    shl-int/lit8 v23, v12, 0x3

    add-int v23, v23, v8

    aget-object v26, v21, v23

    move/from16 v28, v8

    aget-object v8, v9, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v26

    check-cast v9, Lm2/w;

    move/from16 v26, v11

    sget-object v11, Lm2/t;->i:Lm2/w;

    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/view/ViewStructure;->setEnabled(Z)V

    goto :goto_8

    :cond_1a
    sget-object v11, Lm2/t;->B:Lm2/w;

    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString>"

    invoke-static {v8, v9}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v8

    check-cast v13, Ljava/util/List;

    :cond_1b
    :goto_8
    const/16 v8, 0x8

    goto :goto_9

    :cond_1c
    move/from16 v28, v8

    move-object/from16 v23, v9

    move/from16 v26, v11

    goto :goto_8

    :goto_9
    shr-long/2addr v14, v8

    add-int/lit8 v9, v28, 0x1

    move v8, v9

    move-object/from16 v9, v23

    move/from16 v11, v26

    goto :goto_7

    :cond_1d
    move-object/from16 v23, v9

    move/from16 v26, v11

    const/16 v8, 0x8

    if-ne v7, v8, :cond_20

    goto :goto_a

    :cond_1e
    move-object/from16 v23, v9

    move/from16 v26, v11

    const/16 v8, 0x8

    :goto_a
    if-eq v12, v10, :cond_20

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    move-object/from16 v9, v23

    move/from16 v11, v26

    goto :goto_6

    :cond_1f
    move/from16 v26, v11

    const/4 v13, 0x0

    :cond_20
    iget v7, v1, Le2/g0;->m:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v8

    if-nez v8, :cond_21

    const/4 v7, 0x0

    :cond_21
    if-eqz v7, :cond_22

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_b
    move-object/from16 v8, p2

    goto :goto_c

    :cond_22
    const/4 v7, -0x1

    goto :goto_b

    :goto_c
    invoke-virtual {v0, v8, v7}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    move-object/from16 v8, p3

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9, v9}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_23

    iget v6, v6, Lg1/d;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_d

    :cond_23
    if-eqz v20, :cond_24

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_d

    :cond_24
    if-eqz v2, :cond_25

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_d

    :cond_25
    move-object v12, v9

    :goto_d
    if-eqz v12, :cond_26

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/ViewStructure;->setAutofillType(I)V

    :cond_26
    if-eqz v3, :cond_27

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    :cond_27
    if-eqz v4, :cond_28

    iget-object v3, v4, Lg1/f;->a:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    :cond_28
    if-eqz v24, :cond_29

    invoke-static/range {v24 .. v24}, Lc6/o;->P(Lg1/m;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    :cond_29
    move-object/from16 v3, p4

    iget-object v3, v3, Ln2/b;->a:Ld1/c0;

    iget v4, v1, Le2/g0;->m:I

    new-instance v6, Lg1/n;

    const/4 v11, 0x0

    invoke-direct {v6, v11, v0}, Lg1/n;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4, v6}, Ld1/c0;->p(ILi9/g;)V

    if-eqz v25, :cond_2a

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setSelected(Z)V

    :cond_2a
    const/4 v11, 0x4

    if-eqz v2, :cond_2d

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setCheckable(Z)V

    sget-object v3, Lo2/a;->l:Lo2/a;

    if-ne v2, v3, :cond_2b

    const/4 v2, 0x1

    goto :goto_e

    :cond_2b
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    :cond_2c
    :goto_f
    const/4 v3, 0x1

    goto :goto_11

    :cond_2d
    if-eqz v25, :cond_2c

    if-nez v5, :cond_2f

    :cond_2e
    const/4 v3, 0x1

    goto :goto_10

    :cond_2f
    iget v2, v5, Lm2/h;->a:I

    if-ne v2, v11, :cond_2e

    goto :goto_f

    :goto_10
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setCheckable(Z)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    :goto_11
    sget-object v2, Lg1/m;->a:Lg1/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg1/l;->b:Lg1/e;

    invoke-static {v2}, Lc6/o;->P(Lg1/m;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "<this>"

    invoke-static {v2, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v2

    if-eqz v4, :cond_3b

    const/16 v34, 0x0

    aget-object v2, v2, v34

    if-eqz v24, :cond_30

    invoke-static/range {v24 .. v24}, Lc6/o;->P(Lg1/m;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-static {v4, v2}, Lu8/l;->x0([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_30

    move v2, v3

    goto :goto_12

    :cond_30
    move/from16 v2, v34

    :goto_12
    if-nez v27, :cond_32

    if-eqz v2, :cond_31

    goto :goto_13

    :cond_31
    move/from16 v2, v34

    goto :goto_14

    :cond_32
    :goto_13
    move v2, v3

    :goto_14
    if-nez v2, :cond_34

    if-eqz v26, :cond_33

    goto :goto_15

    :cond_33
    move/from16 v14, v34

    goto :goto_16

    :cond_34
    :goto_15
    move v14, v3

    :goto_16
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    iget-object v3, v1, Le2/g0;->R:Le2/c1;

    iget-object v3, v3, Le2/c1;->d:Le2/h1;

    invoke-virtual {v3}, Le2/h1;->c1()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_17

    :cond_35
    move/from16 v11, v34

    :goto_17
    invoke-virtual {v0, v11}, Landroid/view/ViewStructure;->setVisibility(I)V

    if-eqz v13, :cond_37

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v3

    const-string v4, ""

    move/from16 v6, v34

    :goto_18
    if-ge v6, v3, :cond_36

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp2/g;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lp2/g;->m:Ljava/lang/String;

    const/16 v7, 0xa

    invoke-static {v8, v4, v7}, Lr0/i;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_36
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "android.widget.TextView"

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_37
    invoke-virtual {v1}, Le2/g0;->n()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lk/f0;

    invoke-virtual {v1}, Lk/f0;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz v5, :cond_38

    iget v1, v5, Lm2/h;->a:I

    invoke-static {v1}, Lf2/k0;->q(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_38
    if-eqz v20, :cond_3a

    const-string v1, "android.widget.EditText"

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    if-eqz v29, :cond_39

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setMaxTextLength(I)V

    :cond_39
    if-eqz v2, :cond_3a

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setInputType(I)V

    :cond_3a
    return-void

    :cond_3b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final L(Lr0/h2;Lr0/c;I)V
    .locals 2

    :goto_0
    iget v0, p0, Lr0/h2;->v:I

    if-le p2, v0, :cond_0

    iget v1, p0, Lr0/h2;->u:I

    if-lt p2, v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lr0/h2;->M()V

    iget v0, p0, Lr0/h2;->v:I

    invoke-virtual {p0, v0}, Lr0/h2;->y(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lr0/c;->k()V

    :cond_3
    invoke-virtual {p0}, Lr0/h2;->j()V

    goto :goto_0
.end method

.method public static M(Lpb/a;Lpb/a;)I
    .locals 4

    iget-wide v0, p1, Lpb/a;->l:D

    iget-wide v2, p0, Lpb/a;->l:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lpb/a;->m:D

    iget-wide p0, p0, Lpb/a;->m:D

    sub-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Lpb/b;->a(DD)I

    move-result p0

    return p0
.end method

.method public static final N(Lz9/q;ZLz9/q;Li9/e;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p3, La9/a;

    if-nez v1, :cond_0

    invoke-static {p3, p2, p0}, Lg6/c1;->H(Li9/e;Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, p3}, Lj9/b0;->b(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lu9/a0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance p3, Lu9/n;

    invoke-direct {p3, p2, v0}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    move-object p2, p3

    :goto_1
    sget-object p3, Lz8/a;->l:Lz8/a;

    if-ne p2, p3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p2}, Lu9/c1;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lu9/v;->e:Lmb/s2;

    if-ne v0, v1, :cond_2

    :goto_2
    return-object p3

    :cond_2
    invoke-virtual {p0}, Lz9/q;->f0()V

    instance-of p3, v0, Lu9/n;

    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    move-object p1, v0

    check-cast p1, Lu9/n;

    iget-object p1, p1, Lu9/n;->a:Ljava/lang/Throwable;

    instance-of p3, p1, Lu9/p1;

    if-eqz p3, :cond_4

    check-cast p1, Lu9/p1;

    iget-object p1, p1, Lu9/p1;->l:Lu9/v0;

    if-ne p1, p0, :cond_4

    instance-of p0, p2, Lu9/n;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    check-cast p2, Lu9/n;

    iget-object p0, p2, Lu9/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_4
    check-cast v0, Lu9/n;

    iget-object p0, v0, Lu9/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    invoke-static {v0}, Lu9/v;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_3
    return-object p2

    :goto_4
    new-instance p2, Lu9/n;

    iget-object p1, p1, Lu9/a0;->l:Ljava/lang/Throwable;

    invoke-direct {p2, p1, v0}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, p2}, Lu9/c1;->O(Ljava/lang/Object;)Z

    throw p1
.end method

.method public static O()V
    .locals 2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Count overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static P()V
    .locals 2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final Q(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", but was \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Li9/a;Lf3/u;Lz0/d;Lr0/q;I)V
    .locals 17

    move-object/from16 v0, p3

    const v1, 0x3145f7ad

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x4

    if-eqz v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p4, v1

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    const/16 v10, 0x20

    if-eqz v2, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x93

    const/16 v5, 0x92

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v2, v5, :cond_2

    move v2, v11

    goto :goto_2

    :cond_2
    move v2, v12

    :goto_2
    and-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {v0, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    sget-object v2, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v0, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lb3/c;

    sget-object v2, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v0, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lb3/m;

    invoke-static {v0}, Lr0/r;->B(Lr0/q;)Lr0/p;

    move-result-object v13

    invoke-static/range {p2 .. p3}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v14

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-ne v8, v15, :cond_3

    sget-object v8, Lf3/c;->m:Lf3/c;

    invoke-virtual {v0, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Li9/a;

    invoke-static {v2, v8, v0}, Lc1/k;->c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/UUID;

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v2, v2, v16

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_4

    if-ne v12, v15, :cond_7

    :cond_4
    new-instance v2, Lf3/v;

    invoke-direct/range {v2 .. v8}, Lf3/v;-><init>(Li9/a;Lf3/u;Landroid/view/View;Lb3/m;Lb3/c;Ljava/util/UUID;)V

    new-instance v3, Lc2/z;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v14}, Lc2/z;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lz0/d;

    const v5, 0x14ae31cc

    invoke-direct {v4, v5, v11, v3}, Lz0/d;-><init>(IZLt8/e;)V

    iget-object v3, v2, Lf3/v;->s:Lf3/t;

    invoke-virtual {v3, v13}, Lf2/a;->setParentCompositionContext(Lr0/u;)V

    iget-object v5, v3, Lf3/t;->u:Lr0/e1;

    invoke-virtual {v5, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iput-boolean v11, v3, Lf3/t;->y:Z

    iget-object v4, v3, Lf2/a;->o:Lr0/u;

    if-nez v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createComposition requires either a parent reference or the View to be attachedto a window. Attach the View or call setParentCompositionReference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    invoke-virtual {v3}, Lf2/a;->d()V

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v12, v2

    :cond_7
    move-object v3, v12

    check-cast v3, Lf3/v;

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_8

    if-ne v4, v15, :cond_9

    :cond_8
    new-instance v4, Lf3/a;

    const/4 v2, 0x0

    invoke-direct {v4, v3, v2}, Lf3/a;-><init>(Lf3/v;I)V

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v4, Li9/c;

    invoke-static {v3, v4, v0}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v4, v1, 0xe

    if-ne v4, v9, :cond_a

    move v4, v11

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v2, v4

    and-int/lit8 v1, v1, 0x70

    if-ne v1, v10, :cond_b

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    :goto_5
    or-int v1, v2, v11

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lr0/q;->e(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_c

    if-ne v2, v15, :cond_d

    :cond_c
    new-instance v2, Landroidx/fragment/app/q;

    const/4 v7, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v2, Li9/a;

    invoke-static {v2, v0}, Lr0/r;->j(Li9/a;Lr0/q;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_6
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v2, Le3/m;

    const/4 v7, 0x3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Le3/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Li9/e;II)V

    iput-object v2, v0, Lr0/n1;->d:Li9/e;

    :cond_f
    return-void
.end method

.method public static final b(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/v;Li9/c;Lr0/q;I)V
    .locals 10

    const v0, 0x298a3a31

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p5, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p4, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    invoke-virtual {p4, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p4, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p4}, Lr0/q;->Y()V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p4}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {p4}, Lr0/q;->W()V

    :goto_5
    and-int/lit16 v0, v0, -0x381

    goto :goto_7

    :cond_6
    :goto_6
    sget-object p2, Lb4/h;->a:Lr0/m1;

    invoke-virtual {p4, p2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/v;

    goto :goto_5

    :goto_7
    invoke-virtual {p4}, Lr0/q;->r()V

    invoke-virtual {p4, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_8

    :cond_7
    new-instance v2, Lb4/g;

    invoke-interface {p2}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v1

    invoke-direct {v2, v1}, Lb4/g;-><init>(Landroidx/lifecycle/q;)V

    invoke-virtual {p4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lb4/g;

    shr-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x380

    invoke-static {p2, v2, p3, p4, v0}, Lg5/f;->c(Landroidx/lifecycle/v;Lb4/g;Li9/c;Lr0/q;I)V

    :goto_8
    move-object v6, p2

    goto :goto_9

    :cond_9
    invoke-virtual {p4}, Lr0/q;->W()V

    goto :goto_8

    :goto_9
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v3, Lb4/c;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v3 .. v9}, Lb4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v3, p2, Lr0/n1;->d:Li9/e;

    :cond_a
    return-void
.end method

.method public static final c(Landroidx/lifecycle/v;Lb4/g;Li9/c;Lr0/q;I)V
    .locals 6

    const v0, 0xd9cac4e

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    const/16 v2, 0x100

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v3, 0x92

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_6

    move v1, v5

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit16 v0, v0, 0x380

    if-ne v0, v2, :cond_7

    move v4, v5

    :cond_7
    or-int v0, v1, v4

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_8

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v1, v0, :cond_9

    :cond_8
    new-instance v1, Lb0/o;

    invoke-direct {v1, p0, p1, p2}, Lb0/o;-><init>(Landroidx/lifecycle/v;Lb4/g;Li9/c;)V

    invoke-virtual {p3, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Li9/c;

    invoke-static {p0, p1, v1, p3}, Lr0/r;->d(Ljava/lang/Object;Ljava/lang/Object;Li9/c;Lr0/q;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_b

    new-instance v0, Lb0/a3;

    const/4 v2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p4

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_b
    return-void
.end method

.method public static final d(Lf1/r;Li9/e;Lr0/q;I)V
    .locals 8

    const v0, 0x4100086b

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_5

    sget-object v1, Lf3/d;->b:Lf3/d;

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lc2/r0;

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x180

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v2

    iget-wide v4, p2, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {p2}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {p0, p2}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    invoke-virtual {p2}, Lr0/q;->e0()V

    iget-boolean v7, p2, Lr0/q;->S:Z

    if-eqz v7, :cond_6

    invoke-virtual {p2, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lr0/q;->o0()V

    :goto_4
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v1, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v4, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {p2, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {p2, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v5, p2}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lc2/m1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lc2/m1;-><init>(Lf1/r;Li9/e;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_8
    return-void
.end method

.method public static final e(Li1/f;J)Z
    .locals 10

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->c:Le2/s;

    iget-object v1, v0, Le2/s;->c0:Le2/b2;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Le2/h1;->R(J)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v6, p0, Li1/f;->B:J

    shr-long v8, v6, v2

    long-to-int p0, v8

    int-to-float p0, p0

    add-float/2addr p0, v3

    and-long/2addr v6, v4

    long-to-int v1, v6

    int-to-float v1, v1

    add-float/2addr v1, v0

    shr-long v6, p1, v2

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_2

    cmpg-float p0, v2, p0

    if-gtz p0, :cond_2

    and-long p0, p1, v4

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    cmpg-float p1, v0, p0

    if-gtz p1, :cond_2

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final f(Z)Ljava/util/concurrent/ExecutorService;
    .locals 2

    new-instance v0, Lx4/b;

    invoke-direct {v0, p0}, Lx4/b;-><init>(Z)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x4

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "newFixedThreadPool(\n    \u2026)),\n        factory\n    )"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final h([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, p1, v2}, Lu8/l;->m0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    add-int/lit8 v1, p1, 0x2

    array-length v2, p0

    invoke-static {p0, v0, v1, p1, v2}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    aput-object p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-object v0
.end method

.method public static final i(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, p0, v2}, Lu8/l;->m0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    add-int/lit8 v1, p0, 0x2

    array-length v2, p1

    invoke-static {p1, v0, p0, v1, v2}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static final j(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, p0, v2}, Lu8/l;->m0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    add-int/lit8 v1, p0, 0x1

    array-length v2, p1

    invoke-static {p1, v0, p0, v1, v2}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static final k(Lq3/k;Ly1/u;J)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v1, v1, Lq3/k;->m:Ljava/lang/Object;

    check-cast v1, Lz1/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lz1/b;->b:Lz1/d;

    iget-object v5, v1, Lz1/b;->a:Lz1/d;

    invoke-static {v0}, Ly1/t;->b(Ly1/u;)Z

    move-result v6

    iget-wide v7, v0, Ly1/u;->b:J

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v5, Lz1/d;->d:[Lz1/a;

    invoke-static {v6, v11}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    iput v12, v5, Lz1/d;->e:I

    iget-object v6, v4, Lz1/d;->d:[Lz1/a;

    invoke-static {v6, v11}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    iput v12, v4, Lz1/d;->e:I

    iput-wide v9, v1, Lz1/b;->c:J

    :cond_0
    invoke-static {v0}, Ly1/t;->d(Ly1/u;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Ly1/u;->k:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    sget-object v6, Lu8/r;->l:Lu8/r;

    :cond_1
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v13

    move v14, v12

    :goto_0
    if-ge v14, v13, :cond_2

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ly1/c;

    iget-wide v9, v15, Ly1/c;->a:J

    move/from16 v16, v13

    iget-wide v12, v15, Ly1/c;->c:J

    invoke-static {v12, v13, v2, v3}, Ll1/b;->e(JJ)J

    move-result-wide v12

    invoke-virtual {v1, v9, v10, v12, v13}, Lz1/b;->a(JJ)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v16

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    iget-wide v9, v0, Ly1/u;->l:J

    invoke-static {v9, v10, v2, v3}, Ll1/b;->e(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v7, v8, v2, v3}, Lz1/b;->a(JJ)V

    :cond_3
    invoke-static {v0}, Ly1/t;->d(Ly1/u;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, v1, Lz1/b;->c:J

    sub-long v2, v7, v2

    const-wide/16 v9, 0x28

    cmp-long v0, v2, v9

    if-lez v0, :cond_4

    iget-object v0, v5, Lz1/d;->d:[Lz1/a;

    invoke-static {v0, v11}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    const/4 v0, 0x0

    iput v0, v5, Lz1/d;->e:I

    iget-object v2, v4, Lz1/d;->d:[Lz1/a;

    invoke-static {v2, v11}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    iput v0, v4, Lz1/d;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lz1/b;->c:J

    :cond_4
    iput-wide v7, v1, Lz1/b;->c:J

    return-void
.end method

.method public static varargs l([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lu8/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lu8/j;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static m(Ljava/util/ArrayList;Ljava/lang/Comparable;)I
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, ")."

    if-ltz v0, :cond_4

    if-gt v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v2, v0, :cond_2

    add-int v1, v2, v0

    ushr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v3, p1}, Ll9/a;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    neg-int p0, v2

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "toIndex ("

    const-string v2, ") is greater than size ("

    invoke-static {p1, v0, v2, v1, v3}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ") is greater than toIndex ("

    const-string v1, "fromIndex ("

    invoke-static {v1, v2, p1, v0, v3}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Lv8/b;)Lv8/b;
    .locals 1

    invoke-virtual {p0}, Lv8/b;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv8/b;->n:Z

    iget v0, p0, Lv8/b;->m:I

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lv8/b;->o:Lv8/b;

    return-object p0
.end method

.method public static final varargs o([Lt8/j;)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    iget-object v4, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Lt8/j;->m:Ljava/lang/Object;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_1
    instance-of v5, v3, Ljava/lang/Byte;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_1

    :cond_2
    instance-of v5, v3, Ljava/lang/Character;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_1

    :cond_3
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_1

    :cond_4
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_5

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_1

    :cond_5
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_6
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_7

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_7
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_8

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_1

    :cond_8
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_9

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_9
    instance-of v5, v3, Ljava/lang/CharSequence;

    if-eqz v5, :cond_a

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    instance-of v5, v3, Landroid/os/Parcelable;

    if-eqz v5, :cond_b

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_b
    instance-of v5, v3, [Z

    if-eqz v5, :cond_c

    check-cast v3, [Z

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_1

    :cond_c
    instance-of v5, v3, [B

    if-eqz v5, :cond_d

    check-cast v3, [B

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_d
    instance-of v5, v3, [C

    if-eqz v5, :cond_e

    check-cast v3, [C

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_1

    :cond_e
    instance-of v5, v3, [D

    if-eqz v5, :cond_f

    check-cast v3, [D

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_1

    :cond_f
    instance-of v5, v3, [F

    if-eqz v5, :cond_10

    check-cast v3, [F

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    :cond_10
    instance-of v5, v3, [I

    if-eqz v5, :cond_11

    check-cast v3, [I

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    :cond_11
    instance-of v5, v3, [J

    if-eqz v5, :cond_12

    check-cast v3, [J

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_1

    :cond_12
    instance-of v5, v3, [S

    if-eqz v5, :cond_13

    check-cast v3, [S

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_1

    :cond_13
    instance-of v5, v3, [Ljava/lang/Object;

    const/16 v6, 0x22

    const-string v7, " for key \""

    if-eqz v5, :cond_18

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    const-class v8, Landroid/os/Parcelable;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_14

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_14
    const-class v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_15

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_15
    const-class v8, Ljava/lang/CharSequence;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_16

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_16
    const-class v8, Ljava/io/Serializable;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_17

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_17
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal value array type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    instance-of v5, v3, Ljava/io/Serializable;

    if-eqz v5, :cond_19

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_19
    instance-of v5, v3, Landroid/os/IBinder;

    if-eqz v5, :cond_1a

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_1a
    instance-of v5, v3, Landroid/util/Size;

    if-eqz v5, :cond_1b

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto :goto_1

    :cond_1b
    instance-of v5, v3, Landroid/util/SizeF;

    if-eqz v5, :cond_1c

    check-cast v3, Landroid/util/SizeF;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal value type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-object v0
.end method

.method public static p(Lpb/a;Lpb/a;Lpb/a;)I
    .locals 4

    invoke-static {p0, p1}, Lg5/f;->M(Lpb/a;Lpb/a;)I

    move-result v0

    invoke-static {p0, p2}, Lg5/f;->M(Lpb/a;Lpb/a;)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, -0x1

    if-ge v0, v1, :cond_1

    return v3

    :cond_1
    invoke-static {p0, p2, p1}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result p0

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method public static r()Lv8/b;
    .locals 2

    new-instance v0, Lv8/b;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lv8/b;-><init>(I)V

    return-object v0
.end method

.method public static t(IILjava/lang/String;Z)I
    .locals 4

    :goto_0
    if-ge p0, p1, :cond_7

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x30

    const/16 v3, 0x3a

    if-gt v1, v0, :cond_1

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    if-gt v1, v0, :cond_2

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x41

    if-gt v1, v0, :cond_3

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    :goto_2
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_6

    return p0

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method public static final u([F[F)F
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static final v(F)F
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x3

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0x2a510554

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    mul-float v1, v0, v0

    div-float v1, p0, v1

    sub-float v1, v0, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float v1, v0, v0

    div-float/2addr p0, v1

    sub-float p0, v0, p0

    mul-float/2addr p0, v2

    sub-float/2addr v0, p0

    return v0
.end method

.method public static final w(JZIF)J
    .locals 0

    if-nez p2, :cond_2

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x5

    if-ne p3, p2, :cond_3

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lb3/a;->d(J)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0, p1}, Lb3/a;->h(J)I

    move-result p2

    goto :goto_1

    :cond_3
    const p2, 0x7fffffff

    :goto_1
    invoke-static {p0, p1}, Lb3/a;->j(J)I

    move-result p3

    if-ne p3, p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p4}, Lb0/n1;->o(F)I

    move-result p3

    invoke-static {p0, p1}, Lb3/a;->j(J)I

    move-result p4

    invoke-static {p3, p4, p2}, Lg6/c1;->f(III)I

    move-result p2

    :goto_2
    invoke-static {p0, p1}, Lb3/a;->g(J)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p2, p1, p0}, Ll9/a;->m(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static x(Lr0/q;)Lr/k;
    .locals 4

    sget v0, Lm/i0;->a:F

    sget-object v0, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/c;

    invoke-interface {v0}, Lb3/c;->a()F

    move-result v1

    invoke-virtual {p0, v1}, Lr0/q;->d(F)Z

    move-result v1

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-nez v1, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v1, Lb0/l1;

    invoke-direct {v1, v0}, Lb0/l1;-><init>(Lb3/c;)V

    new-instance v2, Ln/t;

    invoke-direct {v2, v1}, Ln/t;-><init>(Lb0/l1;)V

    invoke-virtual {p0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Ln/t;

    invoke-virtual {p0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    new-instance v1, Lr/k;

    invoke-direct {v1, v2}, Lr/k;-><init>(Ln/t;)V

    invoke-virtual {p0, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Lr/k;

    return-object v1
.end method

.method public static final y(J[BIII)V
    .locals 4

    rsub-int/lit8 p4, p4, 0x7

    rsub-int/lit8 p5, p5, 0x8

    if-gt p5, p4, :cond_0

    :goto_0
    shl-int/lit8 v0, p4, 0x3

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    sget-object v1, Lr9/b;->a:[I

    aget v0, v1, v0

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 p3, p3, 0x2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    if-eq p4, p5, :cond_0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static z(Ljava/util/Collection;)Lo9/d;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo9/d;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lo9/b;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public abstract q(Lb6/r0;Lb6/l;)Lb6/u;
.end method

.method public abstract s(Lb6/p0;Lb6/l;)Lo6/r;
.end method
