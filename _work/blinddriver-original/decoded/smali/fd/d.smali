.class public final Lfd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;


# instance fields
.field public final synthetic a:Lfd/o;


# direct methods
.method public constructor <init>(Lfd/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/d;->a:Lfd/o;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lfd/d;->a:Lfd/o;

    invoke-virtual {p0, p1}, Lfd/o;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 2

    iget-object p0, p0, Lfd/d;->a:Lfd/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lfd/o;->g:Lua/nav/routing/GeoPoint;

    const/4 v1, 0x0

    iput v1, p0, Lfd/o;->h:I

    iget-object v1, p0, Lfd/o;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lfd/o;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lfd/o;->c:Lx9/l0;

    new-instance v1, Lfd/a;

    invoke-direct {v1}, Lfd/a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
