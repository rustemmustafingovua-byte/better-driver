.class public final synthetic Lod/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lua/nav/c;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lod/m1;->l:I

    iput-object p1, p0, Lod/m1;->m:Lua/nav/c;

    iput-object p2, p0, Lod/m1;->n:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lod/m1;->l:I

    check-cast p1, Lsc/e;

    packed-switch v0, :pswitch_data_0

    const-string v0, "kind"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lsc/d;->m:Lsc/d;

    iget-object v1, p0, Lod/m1;->m:Lua/nav/c;

    invoke-virtual {v1, v0, p1}, Lua/nav/c;->P(Lsc/d;Lsc/e;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lsc/e;->l:Lsc/e;

    if-ne p1, v2, :cond_0

    sget-object p1, Lcd/d;->A0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcd/d;->B0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v2, ": "

    invoke-static {p1, v2, v0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcd/d;->C0:Lcd/c;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lod/m1;->n:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const-string v0, "kind"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lsc/d;->l:Lsc/d;

    iget-object v1, p0, Lod/m1;->m:Lua/nav/c;

    invoke-virtual {v1, v0, p1}, Lua/nav/c;->P(Lsc/d;Lsc/e;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lsc/e;->l:Lsc/e;

    if-ne p1, v2, :cond_2

    sget-object p1, Lcd/d;->A0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    sget-object p1, Lcd/d;->B0:Lcd/c;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v2, ": "

    invoke-static {p1, v2, v0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_3
    sget-object p1, Lcd/d;->C0:Lcd/c;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    iget-object p0, p0, Lod/m1;->n:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
