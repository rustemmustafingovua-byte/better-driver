.class public final synthetic Ln/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ln/h1;


# direct methods
.method public synthetic constructor <init>(Ln/h1;I)V
    .locals 0

    iput p2, p0, Ln/z0;->l:I

    iput-object p1, p0, Ln/z0;->m:Ln/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ln/z0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ln/z0;->m:Ln/h1;

    invoke-virtual {p0}, Ln/h1;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ln/z0;->m:Ln/h1;

    iget-object v0, p0, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln/h1;->g:Lr0/c1;

    iget-object v1, v0, Lr0/c1;->m:Lr0/k2;

    invoke-static {v1, v0}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Lr0/k2;

    iget-wide v0, v0, Lr0/k2;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln/h1;->h:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
