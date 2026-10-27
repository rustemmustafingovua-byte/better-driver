.class public final synthetic Lu/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lu/e1;


# direct methods
.method public synthetic constructor <init>(Lu/e1;I)V
    .locals 0

    iput p2, p0, Lu/a0;->l:I

    iput-object p1, p0, Lu/a0;->m:Lu/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu/a0;->l:I

    check-cast p1, Le2/e2;

    packed-switch v0, :pswitch_data_0

    const-string v0, "null cannot be cast to non-null type androidx.compose.foundation.layout.InsetsConsumingModifierNode"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lu/e1;

    iget-object p1, p1, Lu/e1;->A:Lu/j1;

    iget-object p0, p0, Lu/a0;->m:Lu/e1;

    iput-object p1, p0, Lu/e1;->z:Lu/j1;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    const-string v0, "null cannot be cast to non-null type androidx.compose.foundation.layout.InsetsConsumingModifierNode"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lu/e1;

    iget-object p0, p0, Lu/a0;->m:Lu/e1;

    iget-object p0, p0, Lu/e1;->A:Lu/j1;

    iget-object v0, p1, Lu/e1;->z:Lu/j1;

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p0, p1, Lu/e1;->z:Lu/j1;

    invoke-virtual {p1}, Lu/e1;->M0()V

    :cond_0
    sget-object p0, Le2/d2;->m:Le2/d2;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
