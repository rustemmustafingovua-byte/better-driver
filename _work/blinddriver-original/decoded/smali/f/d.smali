.class public final synthetic Lf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic l:Lf/h;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lf/b;

.field public final synthetic o:Lg/a;


# direct methods
.method public synthetic constructor <init>(Lf/h;Ljava/lang/String;Lf/b;Lg/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/d;->l:Lf/h;

    iput-object p2, p0, Lf/d;->m:Ljava/lang/String;

    iput-object p3, p0, Lf/d;->n:Lf/b;

    iput-object p4, p0, Lf/d;->o:Lg/a;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 4

    iget-object p1, p0, Lf/d;->l:Lf/h;

    iget-object v0, p1, Lf/h;->e:Ljava/util/LinkedHashMap;

    sget-object v1, Landroidx/lifecycle/o;->ON_START:Landroidx/lifecycle/o;

    iget-object v2, p0, Lf/d;->m:Ljava/lang/String;

    if-ne v1, p2, :cond_1

    iget-object p2, p1, Lf/h;->g:Landroid/os/Bundle;

    iget-object p1, p1, Lf/h;->f:Ljava/util/LinkedHashMap;

    new-instance v1, Lf/e;

    iget-object v3, p0, Lf/d;->o:Lg/a;

    iget-object p0, p0, Lf/d;->n:Lf/b;

    invoke-direct {v1, v3, p0}, Lf/e;-><init>(Lg/a;Lf/b;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lb/e0;

    invoke-virtual {p1, v0}, Lb/e0;->d(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v2, p2}, Lc6/o;->Q(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a;

    if-eqz p1, :cond_3

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget p2, p1, Lf/a;->l:I

    iget-object p1, p1, Lf/a;->m:Landroid/content/Intent;

    invoke-virtual {v3, p1, p2}, Lg/a;->c(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p0, Lb/e0;

    invoke-virtual {p0, p1}, Lb/e0;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p0, Landroidx/lifecycle/o;->ON_STOP:Landroidx/lifecycle/o;

    if-ne p0, p2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p0, Landroidx/lifecycle/o;->ON_DESTROY:Landroidx/lifecycle/o;

    if-ne p0, p2, :cond_3

    invoke-virtual {p1, v2}, Lf/h;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
