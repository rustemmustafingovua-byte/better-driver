.class public final Lkb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic l:Ljava/lang/Iterable;

.field public final synthetic m:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkb/a;->l:Ljava/lang/Iterable;

    iput-object p1, p0, Lkb/a;->m:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lkb/a;->l:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lkb/a;->m:Ljava/lang/Class;

    invoke-static {v0, p0}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object p0

    return-object p0
.end method
