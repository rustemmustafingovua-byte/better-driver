.class public final Lmb/q6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmb/q6;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmb/q6;->e:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lmb/q6;->b:I

    .line 4
    iput p4, p0, Lmb/q6;->c:I

    .line 5
    iput p5, p0, Lmb/q6;->d:I

    .line 6
    iput-object p3, p0, Lmb/q6;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lx3/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lmb/q6;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lmb/q6;->b:I

    .line 9
    iput-object p1, p0, Lmb/q6;->e:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lmb/q6;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lhb/c;
    .locals 4

    iget-object v0, p0, Lmb/q6;->g:Ljava/lang/Object;

    check-cast v0, Lhb/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lhb/c;

    iget-object v1, p0, Lmb/q6;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lmb/q6;->b:I

    iget v3, p0, Lmb/q6;->c:I

    invoke-direct {v0, v1, v2, v3}, Lhb/c;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lmb/q6;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lmb/q6;->b:I

    iget-object v0, p0, Lmb/q6;->e:Ljava/lang/Object;

    check-cast v0, Lx3/q;

    iput-object v0, p0, Lmb/q6;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lmb/q6;->d:I

    return-void
.end method

.method public c()Z
    .locals 4

    iget-object v0, p0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v0, Lx3/q;

    iget-object v0, v0, Lx3/q;->b:Lx3/r;

    invoke-virtual {v0}, Lx3/r;->b()Ly3/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lv8/e;->a(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, v0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    iget v0, v0, Lv8/e;->l:I

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget p0, p0, Lmb/q6;->c:I

    const v0, 0xfe0f

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmb/q6;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
