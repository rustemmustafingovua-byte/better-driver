.class public final Lb/f0;
.super Lh4/f;
.source "SourceFile"


# instance fields
.field public final c:Lg5/i;


# direct methods
.method public constructor <init>(Lb/h0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg5/i;

    new-instance v1, Lb/e0;

    invoke-direct {v1, p1}, Lb/e0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lg5/i;-><init>(Lb/e0;)V

    invoke-virtual {v0, p0}, Lg5/i;->f(Lh4/f;)V

    iput-object v0, p0, Lb/f0;->c:Lg5/i;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    return-void
.end method
