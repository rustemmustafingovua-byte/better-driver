.class public final Lr/t1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/e2;


# static fields
.field public static final A:Lmb/q;


# instance fields
.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmb/q;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lr/t1;->A:Lmb/q;

    return-void
.end method


# virtual methods
.method public final i()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lr/t1;->A:Lmb/q;

    return-object p0
.end method
