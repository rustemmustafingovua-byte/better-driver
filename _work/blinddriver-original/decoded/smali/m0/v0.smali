.class public final synthetic Lm0/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lj9/u;


# direct methods
.method public synthetic constructor <init>(Lj9/u;I)V
    .locals 0

    iput p2, p0, Lm0/v0;->l:I

    iput-object p1, p0, Lm0/v0;->m:Lj9/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lm0/v0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Le2/e2;

    iget-object p0, p0, Lm0/v0;->m:Lj9/u;

    iget-boolean v0, p0, Lj9/u;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "null cannot be cast to non-null type androidx.compose.foundation.gestures.ScrollableContainerNode"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr/t1;

    iget-boolean p1, p1, Lr/t1;->z:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lj9/u;->l:Z

    xor-int/lit8 p0, p1, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lm0/x;

    iget-object p1, p1, Lm0/x;->f:Lp2/j0;

    iget-object p1, p1, Lp2/j0;->a:Lp2/i0;

    iget-object p1, p1, Lp2/i0;->a:Lp2/g;

    iget-object p1, p1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    iget-object p0, p0, Lm0/v0;->m:Lj9/u;

    iput-boolean p1, p0, Lj9/u;->l:Z

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
