.class public final synthetic Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lp/g;


# direct methods
.method public synthetic constructor <init>(Lp/g;I)V
    .locals 0

    iput p2, p0, Lp/a;->l:I

    iput-object p1, p0, Lp/a;->m:Lp/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lp/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lp/a;->m:Lp/g;

    iget-object p0, p0, Lp/g;->H:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    sget-object v0, Lp/b1;->a:Lr0/a0;

    iget-object p0, p0, Lp/a;->m:Lp/g;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/e1;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. The Indication instance provided here was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lp/g;->J:Lp/e1;

    iput-object v0, p0, Lp/g;->J:Lp/e1;

    if-eqz v1, :cond_3

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lp/g;->L:Le2/j;

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lp/g;->S:Z

    if-nez v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Le2/k;->N0(Le2/j;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lp/g;->L:Le2/j;

    invoke-virtual {p0}, Lp/g;->W0()V

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
