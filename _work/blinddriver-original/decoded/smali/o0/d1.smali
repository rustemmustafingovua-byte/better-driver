.class public final synthetic Lo0/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lo0/f1;


# direct methods
.method public synthetic constructor <init>(Lo0/f1;I)V
    .locals 0

    iput p2, p0, Lo0/d1;->l:I

    iput-object p1, p0, Lo0/d1;->m:Lo0/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lo0/d1;->l:I

    iget-object p0, p0, Lo0/d1;->m:Lo0/f1;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lo0/a3;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo0/y2;

    sget-object p0, Lo0/z2;->a:Ln0/b;

    return-object p0

    :pswitch_0
    sget-object v0, Lo0/a3;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/y2;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo0/f1;->F:Ln0/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le2/k;->N0(Le2/j;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo0/f1;->F:Ln0/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo0/f1;->F:Ln0/a;

    if-nez v0, :cond_2

    new-instance v5, Lo0/e1;

    const/4 v0, 0x0

    invoke-direct {v5, v0, p0}, Lo0/e1;-><init>(ILjava/lang/Object;)V

    new-instance v6, Lo0/d1;

    const/4 v0, 0x1

    invoke-direct {v6, p0, v0}, Lo0/d1;-><init>(Lo0/f1;I)V

    iget-object v2, p0, Lo0/f1;->B:Ls/i;

    iget-boolean v3, p0, Lo0/f1;->C:Z

    iget v4, p0, Lo0/f1;->D:F

    sget-object v0, Ln0/f;->a:Ln/n1;

    new-instance v1, Ln0/a;

    invoke-direct/range {v1 .. v6}, Ln0/a;-><init>(Ls/i;ZFLo0/e1;Lo0/d1;)V

    invoke-virtual {p0, v1}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object v1, p0, Lo0/f1;->F:Ln0/a;

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
