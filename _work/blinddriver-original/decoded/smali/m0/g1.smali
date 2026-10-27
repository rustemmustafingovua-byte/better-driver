.class public final synthetic Lm0/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;

.field public final synthetic n:Li9/a;


# direct methods
.method public synthetic constructor <init>(Li9/a;Li9/a;I)V
    .locals 0

    iput p3, p0, Lm0/g1;->l:I

    iput-object p1, p0, Lm0/g1;->m:Li9/a;

    iput-object p2, p0, Lm0/g1;->n:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm0/g1;->l:I

    check-cast p1, Le0/g;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm0/g1;->m:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lm0/g1;->n:Li9/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p1}, Le0/g;->close()V

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lm0/g1;->m:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lm0/g1;->n:Li9/a;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p1}, Le0/g;->close()V

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
