.class public final Ls0/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ls0/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls0/m0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls0/l0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/l0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ls0/l0;->d:I

    iget p0, p0, Ls0/l0;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Ls0/l0;->e:Ljava/lang/Object;

    check-cast v0, Ls0/m0;

    iget-object v0, v0, Ls0/m0;->e:[I

    iget p0, p0, Ls0/l0;->c:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls0/l0;->e:Ljava/lang/Object;

    check-cast v0, Ls0/m0;

    iget-object v0, v0, Ls0/m0;->g:[Ljava/lang/Object;

    iget p0, p0, Ls0/l0;->d:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ls0/l0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
