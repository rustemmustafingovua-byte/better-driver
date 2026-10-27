.class public final synthetic Lb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lb/m;->l:I

    iput-object p3, p0, Lb/m;->m:Ljava/lang/Object;

    iput p1, p0, Lb/m;->n:I

    iput-object p4, p0, Lb/m;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lb/m;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb/m;->m:Ljava/lang/Object;

    check-cast v0, Lgc/f;

    iget-object v0, v0, Lgc/f;->c:Ljava/lang/Object;

    check-cast v0, Lj4/b;

    iget v1, p0, Lb/m;->n:I

    iget-object p0, p0, Lb/m;->o:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Lj4/b;->d(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lb/m;->m:Ljava/lang/Object;

    check-cast v0, Lb/n;

    iget-object v1, p0, Lb/m;->o:Ljava/lang/Object;

    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    iget p0, p0, Lb/m;->n:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lf/h;->a(IILandroid/content/Intent;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lb/m;->m:Ljava/lang/Object;

    check-cast v0, Lb/n;

    iget-object v1, p0, Lb/m;->o:Ljava/lang/Object;

    check-cast v1, Lb0/l1;

    iget-object v1, v1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v1, Ljava/io/Serializable;

    iget-object v2, v0, Lf/h;->a:Ljava/util/LinkedHashMap;

    iget p0, p0, Lb/m;->n:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lf/h;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/e;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lf/e;->a:Lf/b;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    iget-object v2, v0, Lf/h;->g:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, v0, Lf/h;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lf/e;->a:Lf/b;

    const-string v3, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lf/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast v2, Lb/e0;

    invoke-virtual {v2, v1}, Lb/e0;->d(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
