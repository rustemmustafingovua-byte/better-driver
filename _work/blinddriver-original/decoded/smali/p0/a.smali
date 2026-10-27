.class public final synthetic Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lc2/f1;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(IILc2/f1;)V
    .locals 0

    iput p2, p0, Lp0/a;->l:I

    iput-object p3, p0, Lp0/a;->m:Lc2/f1;

    iput p1, p0, Lp0/a;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lp0/a;->l:I

    check-cast p1, Lc2/e1;

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lp0/a;->n:I

    neg-int v0, v0

    const/4 v1, 0x0

    iget-object p0, p0, Lp0/a;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v1}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    iget v1, p0, Lp0/a;->n:I

    neg-int v1, v1

    iget-object p0, p0, Lp0/a;->m:Lc2/f1;

    invoke-static {p1, p0, v0, v1}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
