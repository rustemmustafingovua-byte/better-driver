.class public final Ltc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ltc/k;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltc/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltc/l;->Companion:Ltc/k;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/l;->a:Ljava/util/ArrayList;

    return-void
.end method
