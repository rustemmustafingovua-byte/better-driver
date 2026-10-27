.class public final Lbd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbd/j;

.field public final b:D


# direct methods
.method public constructor <init>(Lbd/j;D)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/c;->a:Lbd/j;

    iput-wide p2, p0, Lbd/c;->b:D

    return-void
.end method
