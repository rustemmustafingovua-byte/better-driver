.class public abstract Lia/d0;
.super Lia/l;
.source "SourceFile"


# static fields
.field public static final Companion:Lia/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/c0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lia/d0;->Companion:Lia/c0;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lia/d0;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
