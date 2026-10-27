.class public abstract Lyb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lyb/c;->a:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lyb/c;->b:D

    return-void
.end method


# virtual methods
.method public abstract a(DDLm2/j;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Lpb/a;

    iget-wide v1, p0, Lyb/c;->a:D

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lpb/a;-><init>(DD)V

    new-instance v1, Lpb/a;

    iget-wide v5, p0, Lyb/c;->b:D

    invoke-direct {v1, v5, v6, v3, v4}, Lpb/a;-><init>(DD)V

    invoke-static {v0, v1}, Ld7/g;->u(Lpb/a;Lpb/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
