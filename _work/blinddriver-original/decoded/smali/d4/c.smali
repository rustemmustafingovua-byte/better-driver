.class public final Ld4/c;
.super Ld4/b;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 6
    sget-object p1, Ld4/a;->b:Ld4/a;

    .line 7
    invoke-direct {p0, p1}, Ld4/c;-><init>(Ld4/b;)V

    return-void
.end method

.method public constructor <init>(Ld4/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Ld4/b;->a:Ljava/util/LinkedHashMap;

    .line 2
    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ld4/b;-><init>()V

    .line 4
    iget-object p0, p0, Ld4/b;->a:Ljava/util/LinkedHashMap;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
