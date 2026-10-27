.class public abstract Lca/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmb/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmb/s2;

    const-string v1, "NO_OWNER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/d;->a:Lmb/s2;

    return-void
.end method
