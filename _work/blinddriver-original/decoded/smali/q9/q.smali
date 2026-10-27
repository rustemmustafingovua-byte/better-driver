.class public final Lq9/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/h;


# instance fields
.field public final a:Lq9/h;

.field public final b:Li9/c;


# direct methods
.method public constructor <init>(Lq9/h;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/q;->a:Lq9/h;

    iput-object p2, p0, Lq9/q;->b:Li9/c;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lq9/p;

    invoke-direct {v0, p0}, Lq9/p;-><init>(Lq9/q;)V

    return-object v0
.end method
