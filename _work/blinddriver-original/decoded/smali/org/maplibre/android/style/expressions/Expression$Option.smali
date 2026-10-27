.class Lorg/maplibre/android/style/expressions/Expression$Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field type:Ljava/lang/String;

.field value:Lorg/maplibre/android/style/expressions/Expression;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/style/expressions/Expression$Option;->type:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/android/style/expressions/Expression$Option;->value:Lorg/maplibre/android/style/expressions/Expression;

    return-void
.end method
