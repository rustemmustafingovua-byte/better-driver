.class public final Lq5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/b;


# instance fields
.field public final synthetic l:I

.field public final m:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lq5/a;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lq5/a;->m:[I

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lq5/a;->m:[I

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_0

    .line 6
    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    aput v4, v2, v0

    const/4 p0, 0x1

    .line 8
    aput v4, v2, p0

    const/4 p0, 0x2

    .line 9
    aput v4, v2, p0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 p1, 0x1

    iput p1, p0, Lq5/a;->l:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array p1, p1, [I

    iput-object p1, p0, Lq5/a;->m:[I

    const/4 p1, 0x0

    move v0, p1

    .line 12
    :goto_0
    iget-object v1, p0, Lq5/a;->m:[I

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_0

    .line 13
    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    aput v3, v1, p1

    return-void
.end method

.method public constructor <init>(Lq5/a;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lq5/a;->l:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p1, Lq5/a;->m:[I

    array-length v0, v0

    .line 17
    new-array v0, v0, [I

    iput-object v0, p0, Lq5/a;->m:[I

    const/4 v0, 0x0

    move v1, v0

    .line 18
    :goto_0
    iget-object v2, p0, Lq5/a;->m:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    .line 19
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    :goto_1
    iget-object v1, p0, Lq5/a;->m:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 21
    iget-object v2, p1, Lq5/a;->m:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq5/a;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq5/a;->m:[I

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 0

    iget-object p0, p0, Lq5/a;->m:[I

    aget p1, p0, p1

    aget p0, p0, p2

    if-ge p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lq5/a;->m:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lq5/a;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lq5/a;->m:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget v1, v1, v3

    invoke-static {v1}, Lpb/b;->c(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lq5/a;->m:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lpb/b;->c(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lq5/a;->m:[I

    array-length v1, p0

    if-le v1, v3, :cond_1

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p0}, Lpb/b;->c(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
