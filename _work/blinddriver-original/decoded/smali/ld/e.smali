.class public final Lld/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lld/j;

.field public final b:D

.field public final c:Ljava/time/LocalDate;

.field public final d:D


# direct methods
.method public constructor <init>(Lld/j;DLjava/time/LocalDate;D)V
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld/e;->a:Lld/j;

    iput-wide p2, p0, Lld/e;->b:D

    iput-object p4, p0, Lld/e;->c:Ljava/time/LocalDate;

    iput-wide p5, p0, Lld/e;->d:D

    return-void
.end method
