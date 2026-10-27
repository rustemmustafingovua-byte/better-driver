.class public Lo6/c;
.super Lo6/r;
.source "SourceFile"


# static fields
.field public static final d:Lo6/c;


# instance fields
.field public final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo6/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lo6/c;-><init>(Lo6/p;Lb6/f;I)V

    sput-object v0, Lo6/c;->d:Lo6/c;

    return-void
.end method

.method public synthetic constructor <init>(Lo6/p;Lb6/f;I)V
    .locals 0

    iput p3, p0, Lo6/c;->c:I

    invoke-direct {p0, p1, p2}, Lo6/r;-><init>(Lo6/p;Lb6/f;)V

    return-void
.end method


# virtual methods
.method public a(Lb6/f;)Ln6/e;
    .locals 2

    iget v0, p0, Lo6/c;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo6/r;->b:Lb6/f;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo6/c;

    iget-object p0, p0, Lo6/r;->a:Lo6/p;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lo6/c;-><init>(Lo6/p;Lb6/f;I)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lo6/c;->g(Lb6/f;)Lo6/c;

    move-result-object p0

    :pswitch_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lr5/s0;
    .locals 0

    iget p0, p0, Lo6/c;->c:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lr5/s0;->m:Lr5/s0;

    return-object p0

    :pswitch_0
    sget-object p0, Lr5/s0;->n:Lr5/s0;

    return-object p0

    :pswitch_1
    sget-object p0, Lr5/s0;->p:Lr5/s0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
    .locals 1

    iget v0, p0, Lo6/c;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lo6/r;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-object p2

    :pswitch_0
    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->f:Ls5/n;

    iget-boolean v0, p0, Ls5/n;->p:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ls5/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/fasterxml/jackson/core/type/b;->g:Z

    sget-object v0, Ls5/n;->u:Ls5/n;

    if-ne p0, v0, :cond_0

    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ls5/g;->o0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ls5/n;->w:Ls5/n;

    if-ne p0, v0, :cond_3

    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ls5/g;->l0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ls5/g;->v0(Lcom/fasterxml/jackson/core/type/b;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
    .locals 1

    iget v0, p0, Lo6/c;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lo6/r;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ls5/g;->w0(Lcom/fasterxml/jackson/core/type/b;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lb6/f;)Lo6/c;
    .locals 2

    iget-object v0, p0, Lo6/r;->b:Lb6/f;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/c;

    iget-object p0, p0, Lo6/r;->a:Lo6/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lo6/c;-><init>(Lo6/p;Lb6/f;I)V

    return-object v0
.end method
