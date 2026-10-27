.class public final synthetic Lfd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lfd/o;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lorg/json/JSONObject;

.field public final synthetic p:Li9/c;


# direct methods
.method public synthetic constructor <init>(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;I)V
    .locals 0

    iput p5, p0, Lfd/b;->l:I

    iput-object p1, p0, Lfd/b;->m:Lfd/o;

    iput-object p2, p0, Lfd/b;->n:Ljava/lang/String;

    iput-object p3, p0, Lfd/b;->o:Lorg/json/JSONObject;

    iput-object p4, p0, Lfd/b;->p:Li9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lfd/b;->l:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "https://tiles.openfreemap.org/styles/liberty"

    const-string v1, "https://tiles.openfreemap.org/styles/dark"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfd/b;->m:Lfd/o;

    iget-object v2, p0, Lfd/b;->n:Ljava/lang/String;

    iget-object v3, p0, Lfd/b;->o:Lorg/json/JSONObject;

    iget-object p0, p0, Lfd/b;->p:Li9/c;

    invoke-static {v1, v2, v3, p0, v0}, Lfd/o;->a(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;Ljava/util/List;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lfd/b;->o:Lorg/json/JSONObject;

    iget-object v1, p0, Lfd/b;->p:Li9/c;

    iget-object v2, p0, Lfd/b;->m:Lfd/o;

    iget-object p0, p0, Lfd/b;->n:Ljava/lang/String;

    invoke-virtual {v2, p0, v0, v1}, Lfd/o;->k(Ljava/lang/String;Lorg/json/JSONObject;Li9/c;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
