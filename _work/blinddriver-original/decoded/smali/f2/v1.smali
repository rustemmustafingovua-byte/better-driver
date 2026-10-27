.class public final Lf2/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk0/s;

.field public final b:Lc2/l0;

.field public final c:Ljava/lang/Object;

.field public final d:Lt0/b;

.field public e:Z


# direct methods
.method public constructor <init>(Lk0/s;Lc2/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/v1;->a:Lk0/s;

    iput-object p2, p0, Lf2/v1;->b:Lc2/l0;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/v1;->c:Ljava/lang/Object;

    new-instance p1, Lt0/b;

    const/16 p2, 0x10

    new-array p2, p2, [Le2/g2;

    invoke-direct {p1, p2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lf2/v1;->d:Lt0/b;

    return-void
.end method
