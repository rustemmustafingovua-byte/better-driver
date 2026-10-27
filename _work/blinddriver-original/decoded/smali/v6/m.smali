.class public final Lv6/m;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic l:Lv6/p;


# direct methods
.method public constructor <init>(Lv6/p;)V
    .locals 0

    iput-object p1, p0, Lv6/m;->l:Lv6/p;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lv6/m;->l:Lv6/p;

    invoke-virtual {p0}, Lv6/p;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lv6/m;->l:Lv6/p;

    invoke-virtual {p0, p1}, Lv6/p;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lv6/j;

    iget-object p0, p0, Lv6/m;->l:Lv6/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lv6/j;-><init>(Lv6/p;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lv6/m;->l:Lv6/p;

    iget-object p0, p0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method
