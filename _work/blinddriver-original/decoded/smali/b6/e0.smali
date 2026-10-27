.class public final Lb6/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final m:Lb6/e0;


# instance fields
.field public final l:Ls5/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb6/e0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb6/e0;-><init>(Ls5/p;)V

    sput-object v0, Lb6/e0;->m:Lb6/e0;

    return-void
.end method

.method public constructor <init>(Ls5/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb6/e0;->l:Ls5/p;

    return-void
.end method
