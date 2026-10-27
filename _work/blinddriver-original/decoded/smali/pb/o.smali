.class public final Lpb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final l:[[I


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lpb/o;->l:[[I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lpb/o;->l:[[I

    aget-object v4, v4, v0

    const/4 v5, -0x1

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object p0, p0, Lpb/o;->l:[[I

    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget v1, v1, v0

    if-gez v1, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x2

    aget-object p0, p0, v1

    aget v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget p0, p0, v1

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final f(III)V
    .locals 0

    iget-object p0, p0, Lpb/o;->l:[[I

    aget-object p0, p0, p1

    aput p3, p0, p2

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    div-int/lit8 v2, v1, 0x3

    rem-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_2

    const/16 v6, 0x46

    if-eq v5, v6, :cond_1

    const/16 v6, 0x54

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown dimension symbol: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x1

    goto :goto_1

    :pswitch_2
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v4, -0x2

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x3

    :goto_1
    iget-object v5, p0, Lpb/o;->l:[[I

    aget-object v2, v5, v2

    aget v5, v2, v3

    if-ge v5, v4, :cond_3

    aput v4, v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "123456789"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_7

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_6

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v4

    iget-object v6, p0, Lpb/o;->l:[[I

    aget-object v6, v6, v2

    aget v6, v6, v4

    const/4 v7, -0x3

    if-eq v6, v7, :cond_5

    const/4 v7, -0x2

    if-eq v6, v7, :cond_4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-eqz v6, :cond_2

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/16 v6, 0x32

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown dimension value: "

    invoke-static {v6, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v6, 0x31

    goto :goto_2

    :cond_2
    const/16 v6, 0x30

    goto :goto_2

    :cond_3
    const/16 v6, 0x46

    goto :goto_2

    :cond_4
    const/16 v6, 0x54

    goto :goto_2

    :cond_5
    const/16 v6, 0x2a

    :goto_2
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
