.class public final Lmb/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/a5;


# instance fields
.field public final a:Lmb/m0;


# direct methods
.method public constructor <init>(Lmb/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/d2;->a:Lmb/m0;

    return-void
.end method


# virtual methods
.method public final b()Lmb/a5;
    .locals 0

    iget-object p0, p0, Lmb/d2;->a:Lmb/m0;

    iget-object p0, p0, Lmb/m0;->f:Lmb/a5;

    return-object p0
.end method
