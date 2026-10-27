.class public final Lv6/l;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lv6/a;


# instance fields
.field public final l:Ljava/lang/Object;

.field public m:Lv6/l;

.field public n:Lv6/l;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lv6/n;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lv6/l;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv6/n;

    iget-object p0, p0, Lv6/n;->b:Ljava/lang/Object;

    return-object p0
.end method
