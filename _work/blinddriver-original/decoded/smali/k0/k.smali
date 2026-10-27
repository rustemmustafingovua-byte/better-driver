.class public final Lk0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/g;


# instance fields
.field public final synthetic a:[Lu2/g;


# direct methods
.method public constructor <init>([Lu2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/k;->a:[Lu2/g;

    return-void
.end method


# virtual methods
.method public final a(Lu2/h;)V
    .locals 3

    iget-object p0, p0, Lk0/k;->a:[Lu2/g;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lu2/g;->a(Lu2/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
