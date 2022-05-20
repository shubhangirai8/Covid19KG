// Delete model
CALL gds.beta.model.drop("multiLabelModelwithcase_300_lr_0.01_relu")
YIELD
    modelInfo,
    trainConfig,
    graphSchema,
    loaded,
    stored,
    creationTime,
    shared