.class public final Lv6/o;
.super Ljava/util/AbstractMap$SimpleEntry;
.source "SourceFile"


# instance fields
.field public final synthetic l:Lv6/p;


# direct methods
.method public constructor <init>(Lv6/p;Lv6/l;)V
    .locals 0

    iput-object p1, p0, Lv6/o;->l:Lv6/p;

    iget-object p1, p2, Lv6/l;->l:Ljava/lang/Object;

    invoke-virtual {p2}, Lv6/l;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lv6/o;->l:Lv6/p;

    invoke-virtual {v2, v0, p1, v1}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    invoke-super {p0, p1}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
