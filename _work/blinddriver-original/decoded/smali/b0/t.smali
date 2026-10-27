.class public final synthetic Lb0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb0/e3;


# direct methods
.method public synthetic constructor <init>(Lb0/e3;I)V
    .locals 0

    iput p2, p0, Lb0/t;->l:I

    iput-object p1, p0, Lb0/t;->m:Lb0/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lb0/t;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lb0/t;->m:Lb0/e3;

    iget-object v0, p0, Lb0/e3;->b:Lp2/g;

    iget-object p0, p0, Lb0/e3;->a:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/j0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lp2/j0;->a:Lp2/i0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lp2/i0;->a:Lp2/g;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lb0/t;->m:Lb0/e3;

    if-eqz p0, :cond_1

    new-instance v0, Lb0/t;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lb0/t;-><init>(Lb0/e3;I)V

    invoke-virtual {v0}, Lb0/t;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lb0/t;->m:Lb0/e3;

    if-eqz p0, :cond_2

    new-instance v0, Lb0/t;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lb0/t;-><init>(Lb0/e3;I)V

    invoke-virtual {v0}, Lb0/t;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
