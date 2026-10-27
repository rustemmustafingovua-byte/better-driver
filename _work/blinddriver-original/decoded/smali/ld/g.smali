.class public final Lld/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/Object;

.field public final c:D


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;D)V
    .locals 1

    const-string v0, "days"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld/g;->a:Ljava/util/List;

    iput-object p2, p0, Lld/g;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lld/g;->c:D

    return-void
.end method
